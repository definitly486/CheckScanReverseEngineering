package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenDelegate;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.tapjoy.TJAdUnitConstants;
import com.warefly.checkscan.data.db.CheckscanDatabase_Impl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public final class tc1 extends RoomOpenDelegate {
    public final /* synthetic */ CheckscanDatabase_Impl a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tc1(CheckscanDatabase_Impl checkscanDatabase_Impl) {
        super(11, "6e6b01916076a044def7787bcabb980b", "e3e27e4b3809fea0106ab856df6f02e9");
        this.a = checkscanDatabase_Impl;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void createAllTables(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `product_categories` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, PRIMARY KEY(`id`))");
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `cheque_requests` (`id` INTEGER NOT NULL, `qrCode` TEXT NOT NULL, `status` TEXT NOT NULL, `requestJson` TEXT NOT NULL, `responseJson` TEXT, PRIMARY KEY(`qrCode`))");
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `geofence_zones` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `lat` REAL NOT NULL, `lon` REAL NOT NULL)");
        SQLite.execSQL(sQLiteConnection, "CREATE UNIQUE INDEX IF NOT EXISTS `index_geofence_zones_lat_lon` ON `geofence_zones` (`lat`, `lon`)");
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `notifications` (`id` INTEGER NOT NULL, `title` TEXT NOT NULL, `body` TEXT NOT NULL, `date` INTEGER NOT NULL, `isRead` INTEGER NOT NULL, `agreementRequired` INTEGER NOT NULL, `deeplink` TEXT, `buttonDeeplink` TEXT, `buttonTitle` TEXT, `logoUrl` TEXT, `ordInfoPromotion` INTEGER, `ordPromotionText` TEXT, `ordToken` TEXT, `ordTitle` TEXT, `ordText` TEXT, `aspectRatio` REAL, PRIMARY KEY(`id`))");
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `purchases_table` (`id` INTEGER NOT NULL, `type` TEXT NOT NULL, `advance_available` INTEGER NOT NULL, `campaign_icon_url` TEXT NOT NULL, `cashback_value` INTEGER NOT NULL, `title` TEXT NOT NULL, `text` TEXT NOT NULL, `image_guide_text` TEXT NOT NULL, `status` TEXT NOT NULL, `next_show_time` INTEGER NOT NULL, PRIMARY KEY(`id`))");
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `purchases_submit_table` (`purchase_id` INTEGER NOT NULL, `submit_title` TEXT NOT NULL, `submit_text` TEXT NOT NULL, `submit_button_text` TEXT NOT NULL, PRIMARY KEY(`purchase_id`), FOREIGN KEY(`purchase_id`) REFERENCES `purchases_table`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `purchases_bank_info_table` (`purchase_id` INTEGER NOT NULL, `bank_title` TEXT NOT NULL, `bak_text` TEXT NOT NULL, PRIMARY KEY(`purchase_id`), FOREIGN KEY(`purchase_id`) REFERENCES `purchases_table`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `purchases_shop_info_table` (`purchase_id` INTEGER NOT NULL, `shop_title` TEXT NOT NULL, `shop_text` TEXT NOT NULL, `example_image_url` TEXT NOT NULL, PRIMARY KEY(`purchase_id`), FOREIGN KEY(`purchase_id`) REFERENCES `purchases_table`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        SQLite.execSQL(sQLiteConnection, RoomMasterTable.CREATE_QUERY);
        SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '6e6b01916076a044def7787bcabb980b')");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void dropAllTables(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `product_categories`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `cheque_requests`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `geofence_zones`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `notifications`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `purchases_table`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `purchases_submit_table`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `purchases_bank_info_table`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `purchases_shop_info_table`");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onCreate(SQLiteConnection sQLiteConnection) {
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onOpen(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, "PRAGMA foreign_keys = ON");
        int i = CheckscanDatabase_Impl.l;
        this.a.internalInitInvalidationTracker(sQLiteConnection);
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPostMigrate(SQLiteConnection sQLiteConnection) {
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPreMigrate(SQLiteConnection sQLiteConnection) {
        DBUtil.dropFtsSyncTriggers(sQLiteConnection);
    }

    @Override // androidx.room.RoomOpenDelegate
    public final RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection sQLiteConnection) {
        HashMap map = new HashMap(2);
        map.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
        map.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
        TableInfo tableInfo = new TableInfo("product_categories", map, new HashSet(0), new HashSet(0));
        TableInfo tableInfo2 = TableInfo.read(sQLiteConnection, "product_categories");
        if (!tableInfo.equals(tableInfo2)) {
            return new RoomOpenDelegate.ValidationResult(false, "product_categories(com.warefly.checkscan.data.db.models.CategoryModel).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
        }
        HashMap map2 = new HashMap(5);
        map2.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 0, null, 1));
        map2.put("qrCode", new TableInfo.Column("qrCode", "TEXT", true, 1, null, 1));
        map2.put(NotificationCompat.CATEGORY_STATUS, new TableInfo.Column(NotificationCompat.CATEGORY_STATUS, "TEXT", true, 0, null, 1));
        map2.put("requestJson", new TableInfo.Column("requestJson", "TEXT", true, 0, null, 1));
        map2.put("responseJson", new TableInfo.Column("responseJson", "TEXT", false, 0, null, 1));
        TableInfo tableInfo3 = new TableInfo("cheque_requests", map2, new HashSet(0), new HashSet(0));
        TableInfo tableInfo4 = TableInfo.read(sQLiteConnection, "cheque_requests");
        if (!tableInfo3.equals(tableInfo4)) {
            return new RoomOpenDelegate.ValidationResult(false, "cheque_requests(com.warefly.checkscan.data.db.models.ChequeRequestModel).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
        }
        HashMap map3 = new HashMap(4);
        map3.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
        map3.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
        map3.put("lat", new TableInfo.Column("lat", "REAL", true, 0, null, 1));
        map3.put("lon", new TableInfo.Column("lon", "REAL", true, 0, null, 1));
        HashSet hashSet = new HashSet(0);
        HashSet hashSet2 = new HashSet(1);
        hashSet2.add(new TableInfo.Index("index_geofence_zones_lat_lon", true, Arrays.asList("lat", "lon"), Arrays.asList("ASC", "ASC")));
        TableInfo tableInfo5 = new TableInfo("geofence_zones", map3, hashSet, hashSet2);
        TableInfo tableInfo6 = TableInfo.read(sQLiteConnection, "geofence_zones");
        if (!tableInfo5.equals(tableInfo6)) {
            return new RoomOpenDelegate.ValidationResult(false, "geofence_zones(com.warefly.checkscan.data.db.models.GeofenceZoneModel).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
        }
        HashMap map4 = new HashMap(16);
        map4.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
        map4.put(TJAdUnitConstants.String.TITLE, new TableInfo.Column(TJAdUnitConstants.String.TITLE, "TEXT", true, 0, null, 1));
        map4.put(TtmlNode.TAG_BODY, new TableInfo.Column(TtmlNode.TAG_BODY, "TEXT", true, 0, null, 1));
        map4.put("date", new TableInfo.Column("date", "INTEGER", true, 0, null, 1));
        map4.put("isRead", new TableInfo.Column("isRead", "INTEGER", true, 0, null, 1));
        map4.put("agreementRequired", new TableInfo.Column("agreementRequired", "INTEGER", true, 0, null, 1));
        map4.put("deeplink", new TableInfo.Column("deeplink", "TEXT", false, 0, null, 1));
        map4.put("buttonDeeplink", new TableInfo.Column("buttonDeeplink", "TEXT", false, 0, null, 1));
        map4.put("buttonTitle", new TableInfo.Column("buttonTitle", "TEXT", false, 0, null, 1));
        map4.put("logoUrl", new TableInfo.Column("logoUrl", "TEXT", false, 0, null, 1));
        map4.put("ordInfoPromotion", new TableInfo.Column("ordInfoPromotion", "INTEGER", false, 0, null, 1));
        map4.put("ordPromotionText", new TableInfo.Column("ordPromotionText", "TEXT", false, 0, null, 1));
        map4.put("ordToken", new TableInfo.Column("ordToken", "TEXT", false, 0, null, 1));
        map4.put("ordTitle", new TableInfo.Column("ordTitle", "TEXT", false, 0, null, 1));
        map4.put("ordText", new TableInfo.Column("ordText", "TEXT", false, 0, null, 1));
        map4.put("aspectRatio", new TableInfo.Column("aspectRatio", "REAL", false, 0, null, 1));
        TableInfo tableInfo7 = new TableInfo("notifications", map4, new HashSet(0), new HashSet(0));
        TableInfo tableInfo8 = TableInfo.read(sQLiteConnection, "notifications");
        if (!tableInfo7.equals(tableInfo8)) {
            return new RoomOpenDelegate.ValidationResult(false, "notifications(com.warefly.checkscan.data.db.models.NotificationModel).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
        }
        HashMap map5 = new HashMap(10);
        map5.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
        map5.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, new TableInfo.Column(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "TEXT", true, 0, null, 1));
        map5.put("advance_available", new TableInfo.Column("advance_available", "INTEGER", true, 0, null, 1));
        map5.put("campaign_icon_url", new TableInfo.Column("campaign_icon_url", "TEXT", true, 0, null, 1));
        map5.put("cashback_value", new TableInfo.Column("cashback_value", "INTEGER", true, 0, null, 1));
        map5.put(TJAdUnitConstants.String.TITLE, new TableInfo.Column(TJAdUnitConstants.String.TITLE, "TEXT", true, 0, null, 1));
        map5.put("text", new TableInfo.Column("text", "TEXT", true, 0, null, 1));
        map5.put("image_guide_text", new TableInfo.Column("image_guide_text", "TEXT", true, 0, null, 1));
        map5.put(NotificationCompat.CATEGORY_STATUS, new TableInfo.Column(NotificationCompat.CATEGORY_STATUS, "TEXT", true, 0, null, 1));
        map5.put("next_show_time", new TableInfo.Column("next_show_time", "INTEGER", true, 0, null, 1));
        TableInfo tableInfo9 = new TableInfo("purchases_table", map5, new HashSet(0), new HashSet(0));
        TableInfo tableInfo10 = TableInfo.read(sQLiteConnection, "purchases_table");
        if (!tableInfo9.equals(tableInfo10)) {
            return new RoomOpenDelegate.ValidationResult(false, "purchases_table(com.warefly.checkscan.data.db.models.purchases.PurchaseModel).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
        }
        HashMap map6 = new HashMap(4);
        map6.put("purchase_id", new TableInfo.Column("purchase_id", "INTEGER", true, 1, null, 1));
        map6.put("submit_title", new TableInfo.Column("submit_title", "TEXT", true, 0, null, 1));
        map6.put("submit_text", new TableInfo.Column("submit_text", "TEXT", true, 0, null, 1));
        map6.put("submit_button_text", new TableInfo.Column("submit_button_text", "TEXT", true, 0, null, 1));
        HashSet hashSet3 = new HashSet(1);
        hashSet3.add(new TableInfo.ForeignKey("purchases_table", "CASCADE", "CASCADE", Arrays.asList("purchase_id"), Arrays.asList(TtmlNode.ATTR_ID)));
        TableInfo tableInfo11 = new TableInfo("purchases_submit_table", map6, hashSet3, new HashSet(0));
        TableInfo tableInfo12 = TableInfo.read(sQLiteConnection, "purchases_submit_table");
        if (!tableInfo11.equals(tableInfo12)) {
            return new RoomOpenDelegate.ValidationResult(false, "purchases_submit_table(com.warefly.checkscan.data.db.models.purchases.PurchaseSubmitInfoModel).\n Expected:\n" + tableInfo11 + "\n Found:\n" + tableInfo12);
        }
        HashMap map7 = new HashMap(3);
        map7.put("purchase_id", new TableInfo.Column("purchase_id", "INTEGER", true, 1, null, 1));
        map7.put("bank_title", new TableInfo.Column("bank_title", "TEXT", true, 0, null, 1));
        map7.put("bak_text", new TableInfo.Column("bak_text", "TEXT", true, 0, null, 1));
        HashSet hashSet4 = new HashSet(1);
        hashSet4.add(new TableInfo.ForeignKey("purchases_table", "CASCADE", "CASCADE", Arrays.asList("purchase_id"), Arrays.asList(TtmlNode.ATTR_ID)));
        TableInfo tableInfo13 = new TableInfo("purchases_bank_info_table", map7, hashSet4, new HashSet(0));
        TableInfo tableInfo14 = TableInfo.read(sQLiteConnection, "purchases_bank_info_table");
        if (!tableInfo13.equals(tableInfo14)) {
            return new RoomOpenDelegate.ValidationResult(false, "purchases_bank_info_table(com.warefly.checkscan.data.db.models.purchases.PurchaseBankImageInfoModel).\n Expected:\n" + tableInfo13 + "\n Found:\n" + tableInfo14);
        }
        HashMap map8 = new HashMap(4);
        map8.put("purchase_id", new TableInfo.Column("purchase_id", "INTEGER", true, 1, null, 1));
        map8.put("shop_title", new TableInfo.Column("shop_title", "TEXT", true, 0, null, 1));
        map8.put("shop_text", new TableInfo.Column("shop_text", "TEXT", true, 0, null, 1));
        map8.put("example_image_url", new TableInfo.Column("example_image_url", "TEXT", true, 0, null, 1));
        HashSet hashSet5 = new HashSet(1);
        hashSet5.add(new TableInfo.ForeignKey("purchases_table", "CASCADE", "CASCADE", Arrays.asList("purchase_id"), Arrays.asList(TtmlNode.ATTR_ID)));
        TableInfo tableInfo15 = new TableInfo("purchases_shop_info_table", map8, hashSet5, new HashSet(0));
        TableInfo tableInfo16 = TableInfo.read(sQLiteConnection, "purchases_shop_info_table");
        if (tableInfo15.equals(tableInfo16)) {
            return new RoomOpenDelegate.ValidationResult(true, null);
        }
        return new RoomOpenDelegate.ValidationResult(false, "purchases_shop_info_table(com.warefly.checkscan.data.db.models.purchases.PurchaseShopImageInfoModel).\n Expected:\n" + tableInfo15 + "\n Found:\n" + tableInfo16);
    }
}

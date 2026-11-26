.class public final Lcom/warefly/checkscan/data/db/CheckscanDatabase$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/data/db/CheckscanDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lcom/warefly/checkscan/data/db/CheckscanDatabase;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/data/db/CheckscanDatabase$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$g;->f:Lcom/warefly/checkscan/data/db/CheckscanDatabase$g;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->a:Lfh8;

    sget-object p0, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    const-string v1, "checkscan_db"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/room/migration/Migration;

    sget-object v1, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->b:Lcom/warefly/checkscan/data/db/CheckscanDatabase$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->c:Lcom/warefly/checkscan/data/db/CheckscanDatabase$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->d:Lcom/warefly/checkscan/data/db/CheckscanDatabase$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->e:Lcom/warefly/checkscan/data/db/CheckscanDatabase$d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f:Lcom/warefly/checkscan/data/db/CheckscanDatabase$e;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->g:Lcom/warefly/checkscan/data/db/CheckscanDatabase$f;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    return-object p0
.end method

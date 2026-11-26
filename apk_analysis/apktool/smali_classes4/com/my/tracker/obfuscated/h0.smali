.class public final Lcom/my/tracker/obfuscated/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/my/tracker/obfuscated/g0$k;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/my/tracker/obfuscated/g0$k;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/my/tracker/obfuscated/g0$k;-><init>(Lcom/my/tracker/obfuscated/g0$j;Ljava/util/List;)V

    sput-object v0, Lcom/my/tracker/obfuscated/h0;->a:Lcom/my/tracker/obfuscated/g0$k;

    const/4 v0, 0x5

    sput v0, Lcom/my/tracker/obfuscated/h0;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 296
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/telephony/CellInfoCdma;)Lcom/my/tracker/obfuscated/g0$c;
    .locals 13

    .line 208
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    .line 210
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    .line 211
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    .line 212
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v4

    .line 213
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v5

    .line 214
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v6

    .line 216
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v7

    .line 217
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v8

    .line 218
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v9

    .line 219
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v10

    .line 220
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v11

    .line 221
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v12

    .line 222
    new-instance v0, Lcom/my/tracker/obfuscated/g0$c;

    invoke-direct/range {v0 .. v12}, Lcom/my/tracker/obfuscated/g0$c;-><init>(IIIIIIIIIIII)V

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoGsm;)Lcom/my/tracker/obfuscated/g0$d;
    .locals 14

    .line 223
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    .line 224
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p1

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 227
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    .line 228
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v7

    .line 229
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v8

    .line 230
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v9

    .line 231
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v10

    .line 232
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v11

    .line 233
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v12

    .line 234
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getTimingAdvance()I

    move-result v13

    .line 235
    new-instance v3, Lcom/my/tracker/obfuscated/g0$d;

    invoke-direct/range {v3 .. v13}, Lcom/my/tracker/obfuscated/g0$d;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    return-object v3
.end method

.method private a(Landroid/telephony/CellInfoLte;)Lcom/my/tracker/obfuscated/g0$e;
    .locals 14

    .line 236
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    .line 237
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p1

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 239
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 240
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    .line 241
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v7

    .line 242
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v8

    .line 243
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v9

    .line 244
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v10

    .line 245
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v11

    .line 246
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v12

    .line 247
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v13

    .line 248
    new-instance v3, Lcom/my/tracker/obfuscated/g0$e;

    invoke-direct/range {v3 .. v13}, Lcom/my/tracker/obfuscated/g0$e;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    return-object v3
.end method

.method private a(Landroid/telephony/CellInfoNr;)Lcom/my/tracker/obfuscated/g0$f;
    .locals 11

    .line 273
    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentityNr;

    .line 274
    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrengthNr;

    .line 275
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v3

    .line 278
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v5

    .line 279
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result v6

    .line 280
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v7

    .line 281
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result v8

    .line 282
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result v9

    .line 283
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getAsuLevel()I

    move-result v10

    .line 284
    new-instance v0, Lcom/my/tracker/obfuscated/g0$f;

    invoke-direct/range {v0 .. v10}, Lcom/my/tracker/obfuscated/g0$f;-><init>(Ljava/lang/String;Ljava/lang/String;JIIIIII)V

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoTdscdma;)Lcom/my/tracker/obfuscated/g0$g;
    .locals 10

    .line 261
    invoke-virtual {p1}, Landroid/telephony/CellInfoTdscdma;->getCellIdentity()Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    .line 262
    invoke-virtual {p1}, Landroid/telephony/CellInfoTdscdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object p1

    .line 263
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getMccString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getMncString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result v3

    .line 266
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result v4

    .line 267
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getUarfcn()I

    move-result v5

    .line 268
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getCpid()I

    move-result v6

    .line 269
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthTdscdma;->getLevel()I

    move-result v7

    .line 270
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthTdscdma;->getDbm()I

    move-result v8

    .line 271
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuLevel()I

    move-result v9

    .line 272
    new-instance v0, Lcom/my/tracker/obfuscated/g0$g;

    invoke-direct/range {v0 .. v9}, Lcom/my/tracker/obfuscated/g0$g;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    return-object v0
.end method

.method private a(Landroid/telephony/TelephonyManager;)Lcom/my/tracker/obfuscated/g0$h;
    .locals 4

    .line 285
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 286
    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 289
    :try_start_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    move-object p1, v1

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-object v0, v1

    .line 291
    :catchall_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EnvironmentParamsDataProvider: unable to substring network operator "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 292
    :goto_1
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 293
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 294
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    .line 295
    new-instance v2, Lcom/my/tracker/obfuscated/g0$h;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/my/tracker/obfuscated/g0$h;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v2
.end method

.method private a(Landroid/telephony/CellInfoWcdma;)Lcom/my/tracker/obfuscated/g0$i;
    .locals 13

    .line 249
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    .line 250
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p1

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 252
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 253
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    .line 254
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v7

    .line 255
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v8

    .line 256
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v9

    .line 257
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v10

    .line 258
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v11

    .line 259
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v12

    .line 260
    new-instance v3, Lcom/my/tracker/obfuscated/g0$i;

    invoke-direct/range {v3 .. v12}, Lcom/my/tracker/obfuscated/g0$i;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    return-object v3
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "EnvironmentParamsDataProvider: can\'t access information"

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/q1;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/q1;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_2

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_5

    check-cast v3, Landroid/telephony/CellInfoCdma;

    invoke-direct {p0, v3}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/telephony/CellInfoCdma;)Lcom/my/tracker/obfuscated/g0$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v4, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_6

    check-cast v3, Landroid/telephony/CellInfoGsm;

    invoke-direct {p0, v3}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/telephony/CellInfoGsm;)Lcom/my/tracker/obfuscated/g0$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    instance-of v4, v3, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_7

    check-cast v3, Landroid/telephony/CellInfoLte;

    invoke-direct {p0, v3}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/telephony/CellInfoLte;)Lcom/my/tracker/obfuscated/g0$e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    instance-of v4, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_8

    check-cast v3, Landroid/telephony/CellInfoWcdma;

    invoke-direct {p0, v3}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/telephony/CellInfoWcdma;)Lcom/my/tracker/obfuscated/g0$i;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_9

    instance-of v5, v3, Landroid/telephony/CellInfoTdscdma;

    if-eqz v5, :cond_9

    check-cast v3, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {p0, v3}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/telephony/CellInfoTdscdma;)Lcom/my/tracker/obfuscated/g0$g;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    if-lt v4, v2, :cond_4

    instance-of v4, v3, Landroid/telephony/CellInfoNr;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/telephony/CellInfoNr;

    invoke-direct {p0, v3}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/telephony/CellInfoNr;)Lcom/my/tracker/obfuscated/g0$f;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/telephony/TelephonyManager;)Lcom/my/tracker/obfuscated/g0$h;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v1

    :cond_c
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "EnvironmentParamsDataProvider: exception during collecting c-info"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method

.method private c(Landroid/content/Context;)Lcom/my/tracker/obfuscated/g0$k;
    .locals 10

    const-string p0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, p1}, Lcom/my/tracker/obfuscated/q1;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/my/tracker/obfuscated/h0;->a:Lcom/my/tracker/obfuscated/g0$k;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "<null>"

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/my/tracker/obfuscated/g0$j;

    if-nez v2, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_0
    if-nez v3, :cond_3

    move-object v6, v1

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/my/tracker/obfuscated/g0$j;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/q1;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/q1;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p0, Lcom/my/tracker/obfuscated/g0$k;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v4, p1}, Lcom/my/tracker/obfuscated/g0$k;-><init>(Lcom/my/tracker/obfuscated/g0$j;Ljava/util/List;)V

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Lnw9;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sget v0, Lcom/my/tracker/obfuscated/h0;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_9

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v7, Lcom/my/tracker/obfuscated/g0$a;

    if-nez v5, :cond_7

    move-object v5, v1

    :cond_7
    if-nez v6, :cond_8

    move-object v6, v1

    :cond_8
    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {v7, v5, v6, v3}, Lcom/my/tracker/obfuscated/g0$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    new-instance p0, Lcom/my/tracker/obfuscated/g0$k;

    invoke-direct {p0, v4, v0}, Lcom/my/tracker/obfuscated/g0$k;-><init>(Lcom/my/tracker/obfuscated/g0$j;Ljava/util/List;)V

    return-object p0

    :cond_a
    :goto_4
    new-instance p0, Lcom/my/tracker/obfuscated/g0$k;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v4, p1}, Lcom/my/tracker/obfuscated/g0$k;-><init>(Lcom/my/tracker/obfuscated/g0$j;Ljava/util/List;)V

    return-object p0

    :cond_b
    :goto_5
    sget-object p0, Lcom/my/tracker/obfuscated/h0;->a:Lcom/my/tracker/obfuscated/g0$k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string p1, "EnvironmentParamsDataProvider: exception during collecting w-info"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/my/tracker/obfuscated/h0;->a:Lcom/my/tracker/obfuscated/g0$k;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Lcom/my/tracker/obfuscated/g0;
    .locals 1

    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/h0;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/h0;->c(Landroid/content/Context;)Lcom/my/tracker/obfuscated/g0$k;

    move-result-object p0

    new-instance p1, Lcom/my/tracker/obfuscated/g0;

    invoke-direct {p1, v0, p0}, Lcom/my/tracker/obfuscated/g0;-><init>(Ljava/util/List;Lcom/my/tracker/obfuscated/g0$k;)V

    return-object p1
.end method

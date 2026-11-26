.class public final Lyads/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lyads/fm;

.field public static final d:Lyads/fm;

.field public static final e:Lyads/p55;


# instance fields
.field public final a:[I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/fm;

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3}, Lyads/fm;-><init>([II)V

    sput-object v0, Lyads/fm;->c:Lyads/fm;

    new-instance v0, Lyads/fm;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    filled-new-array {v1, v6, v2}, [I

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lyads/fm;-><init>([II)V

    sput-object v0, Lyads/fm;->d:Lyads/fm;

    new-instance v0, Lyads/pe3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lyads/pe3;-><init>(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    move-result-object v0

    iget v1, v0, Lyads/pe3;->b:I

    iget-object v0, v0, Lyads/pe3;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Lyads/p55;->a(I[Ljava/lang/Object;)Lyads/p55;

    move-result-object v0

    sput-object v0, Lyads/fm;->e:Lyads/p55;

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lyads/fm;->a:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lyads/fm;->a:[I

    :goto_0
    iput p2, p0, Lyads/fm;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lyads/fm;
    .locals 7

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    sget v1, Lyads/u56;->a:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 185
    new-instance v2, Ljava/lang/String;

    .line 186
    const-string v4, "QW1hem9u"

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    sget-object v5, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 187
    sget-object v4, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    new-instance v2, Ljava/lang/String;

    .line 189
    const-string v6, "WGlhb21p"

    invoke-static {v6, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v2, v6, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "external_surround_sound_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 192
    sget-object p0, Lyads/fm;->d:Lyads/fm;

    return-object p0

    :cond_1
    const/16 v2, 0x1d

    const/16 v4, 0x8

    if-lt v1, v2, :cond_3

    .line 193
    invoke-static {p0}, Lyads/u56;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 195
    :cond_2
    new-instance p0, Lyads/fm;

    .line 196
    invoke-static {}, Lyads/em;->a()[I

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lyads/fm;-><init>([II)V

    return-object p0

    :cond_3
    if-eqz v0, :cond_5

    .line 197
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 198
    :cond_4
    new-instance p0, Lyads/fm;

    .line 199
    const-string v1, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 200
    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lyads/fm;-><init>([II)V

    return-object p0

    .line 201
    :cond_5
    :goto_0
    sget-object p0, Lyads/fm;->c:Lyads/fm;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/vz2;)Landroid/util/Pair;
    .locals 9

    iget-object v0, p1, Lyads/vz2;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lyads/vz2;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lyads/z84;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lyads/fm;->e:Lyads/p55;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyads/re3;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/16 v6, 0x12

    if-ne v0, v6, :cond_2

    iget-object v7, p0, Lyads/fm;->a:[I

    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    if-ne v0, v5, :cond_4

    iget-object v7, p0, Lyads/fm;->a:[I

    invoke-static {v7, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-ltz v7, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :goto_1
    iget-object v7, p0, Lyads/fm;->a:[I

    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-ltz v7, :cond_10

    iget v7, p1, Lyads/vz2;->z:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    if-ne v0, v6, :cond_5

    goto :goto_2

    :cond_5
    iget p0, p0, Lyads/fm;->b:I

    if-le v7, p0, :cond_a

    return-object v3

    :cond_6
    :goto_2
    iget p0, p1, Lyads/vz2;->A:I

    if-eq p0, v8, :cond_7

    goto :goto_3

    :cond_7
    const p0, 0xbb80

    :goto_3
    sget p1, Lyads/u56;->a:I

    const/16 v6, 0x1d

    if-lt p1, v6, :cond_8

    invoke-static {v0, p0}, Lyads/em;->a(II)I

    move-result v7

    goto :goto_4

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0}, Lyads/p55;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    move-object p1, p0

    :cond_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_a
    :goto_4
    sget p0, Lyads/u56;->a:I

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_c

    if-ne v7, v2, :cond_b

    move v4, v5

    goto :goto_5

    :cond_b
    const/4 p1, 0x3

    if-eq v7, p1, :cond_d

    const/4 p1, 0x4

    if-eq v7, p1, :cond_d

    const/4 p1, 0x5

    if-ne v7, p1, :cond_c

    goto :goto_5

    :cond_c
    move v4, v7

    :cond_d
    :goto_5
    const/16 p1, 0x1a

    if-gt p0, p1, :cond_e

    sget-object p0, Lyads/m25;->d:Lyads/gm;

    invoke-virtual {p0}, Lyads/gm;->a()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    if-ne v4, p0, :cond_e

    const/4 v4, 0x2

    :cond_e
    invoke-static {v4}, Lyads/u56;->a(I)I

    move-result p0

    if-nez p0, :cond_f

    return-object v3

    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/fm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/fm;

    iget-object v1, p0, Lyads/fm;->a:[I

    iget-object v3, p1, Lyads/fm;->a:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lyads/fm;->b:I

    iget p1, p1, Lyads/fm;->b:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lyads/fm;->b:I

    iget-object p0, p0, Lyads/fm;->a:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lyads/fm;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyads/fm;->a:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

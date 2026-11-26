.class public abstract Lyads/jz3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/m25;->e:Lyads/kz3;

    const-string v1, "^\\D?(\\d+)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lyads/jz3;->a:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lyads/jz3;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lyads/kz3;->b()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lyads/jz3;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lyads/kz3;->c()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lyads/jz3;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lyads/kz3;->O()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lyads/jz3;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lyads/kz3;->q()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lyads/jz3;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lyads/kz3;->r()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lyads/jz3;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lyads/kz3;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lyads/jz3;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lyads/kz3;->F()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyads/jz3;->i:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lyads/jz3;->j:I

    return-void
.end method

.method public static a()I
    .locals 7

    .line 907
    sget v0, Lyads/jz3;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 908
    const-string v0, "video/avc"

    const/4 v2, 0x0

    .line 909
    invoke-static {v0, v2, v2}, Lyads/jz3;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 910
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vy3;

    :goto_0
    if-eqz v0, :cond_6

    .line 911
    iget-object v0, v0, Lyads/vy3;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_2

    .line 912
    :cond_1
    new-array v0, v2, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 913
    :cond_2
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 914
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    sparse-switch v5, :sswitch_data_0

    move v5, v1

    goto :goto_2

    :sswitch_0
    const/high16 v5, 0x2200000

    goto :goto_2

    :sswitch_1
    const/high16 v5, 0x900000

    goto :goto_2

    :sswitch_2
    const v5, 0x564000

    goto :goto_2

    :sswitch_3
    const/high16 v5, 0x220000

    goto :goto_2

    :sswitch_4
    const/high16 v5, 0x200000

    goto :goto_2

    :sswitch_5
    const/high16 v5, 0x140000

    goto :goto_2

    :sswitch_6
    const v5, 0xe1000

    goto :goto_2

    :sswitch_7
    const v5, 0x65400

    goto :goto_2

    :sswitch_8
    const v5, 0x31800

    goto :goto_2

    :sswitch_9
    const v5, 0x18c00

    goto :goto_2

    :cond_3
    const/16 v5, 0x6300

    :goto_2
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 915
    :cond_4
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    const v0, 0x54600

    goto :goto_3

    :cond_5
    const v0, 0x2a300

    :goto_3
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 916
    :cond_6
    sput v2, Lyads/jz3;->j:I

    return v2

    :cond_7
    return v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic a(Lyads/iz3;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1054
    invoke-interface {p0, p2}, Lyads/iz3;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Lyads/iz3;->a(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public static synthetic a(Lyads/vy3;)I
    .locals 3

    .line 1029
    iget-object p0, p0, Lyads/vy3;->a:Ljava/lang/String;

    .line 1030
    sget-object v0, Lyads/m25;->e:Lyads/kz3;

    invoke-virtual {v0}, Lyads/kz3;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c2.android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1031
    :cond_0
    sget v1, Lyads/u56;->a:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Lyads/kz3;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lyads/vz2;Lyads/vy3;)I
    .locals 0

    .line 906
    :try_start_0
    invoke-virtual {p1, p0}, Lyads/vy3;->a(Lyads/vz2;)Z

    move-result p0
    :try_end_0
    .catch Lyads/ez3; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 962
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 963
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 964
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    :cond_1
    const-string p0, "video/dolby-vision"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 966
    new-instance p0, Ljava/lang/String;

    .line 967
    const-string p2, "T01YLk1TLkhFVkNEVi5EZWNvZGVy"

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 968
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 969
    new-instance p0, Ljava/lang/String;

    .line 970
    const-string p1, "dmlkZW8vaGV2Y2R2"

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 971
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 972
    const-string p2, "T01YLlJUSy52aWRlby5kZWNvZGVy"

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p0, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 973
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 974
    new-instance p0, Ljava/lang/String;

    .line 975
    const-string p2, "T01YLnJlYWx0ZWsudmlkZW8uZGVjb2Rlci50dW5uZWxlZA=="

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p0, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 976
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 977
    :cond_3
    new-instance p0, Ljava/lang/String;

    .line 978
    const-string p1, "dmlkZW8vZHZfaGV2Yw=="

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 979
    :cond_4
    const-string p0, "audio/alac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 980
    new-instance p0, Ljava/lang/String;

    .line 981
    const-string v0, "T01YLmxnZS5hbGFjLmRlY29kZXI="

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 982
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 983
    const-string p0, "audio/x-lg-alac"

    return-object p0

    .line 984
    :cond_5
    const-string p0, "audio/flac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 985
    new-instance p0, Ljava/lang/String;

    .line 986
    const-string v0, "T01YLmxnZS5mbGFjLmRlY29kZXI="

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 987
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 988
    const-string p0, "audio/x-lg-flac"

    return-object p0

    .line 989
    :cond_6
    const-string p0, "audio/ac3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 990
    new-instance p0, Ljava/lang/String;

    .line 991
    const-string p2, "T01YLmxnZS5hYzMuZGVjb2Rlcg=="

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 992
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 993
    const-string p0, "audio/lg-ac3"

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/vz2;)Ljava/lang/String;
    .locals 2

    .line 917
    iget-object v0, p0, Lyads/vz2;->m:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    const-string p0, "audio/eac3"

    return-object p0

    .line 919
    :cond_0
    iget-object v0, p0, Lyads/vz2;->m:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    invoke-static {p0}, Lyads/jz3;->b(Lyads/vz2;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 921
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_3

    .line 922
    const-string p0, "video/avc"

    return-object p0

    .line 923
    :cond_2
    :goto_0
    const-string p0, "video/hevc"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/dz3;Lyads/fz3;)Ljava/util/ArrayList;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 924
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 925
    iget-object v7, v1, Lyads/dz3;->a:Ljava/lang/String;

    .line 926
    invoke-interface {v2}, Lyads/fz3;->a()I

    move-result v12

    .line 927
    invoke-interface {v2}, Lyads/fz3;->b()Z

    move-result v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_10

    .line 928
    invoke-interface {v2, v15}, Lyads/fz3;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 929
    sget v6, Lyads/u56;->a:I

    const/16 v8, 0x1d

    if-lt v6, v8, :cond_1

    .line 930
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 931
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 932
    invoke-static {v0, v9, v13, v7}, Lyads/jz3;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    .line 933
    :cond_2
    invoke-static {v0, v9, v7}, Lyads/jz3;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    move-object v11, v9

    .line 934
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 935
    invoke-interface {v2, v4, v10, v9}, Lyads/fz3;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v16

    .line 936
    invoke-interface {v2, v4, v9}, Lyads/fz3;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v17

    .line 937
    iget-boolean v14, v1, Lyads/dz3;->c:Z

    if-nez v14, :cond_4

    if-nez v17, :cond_0

    :cond_4
    if-eqz v14, :cond_5

    if-nez v16, :cond_5

    goto :goto_1

    .line 938
    :cond_5
    invoke-interface {v2, v3, v10, v9}, Lyads/fz3;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 939
    invoke-interface {v2, v3, v9}, Lyads/fz3;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v16

    .line 940
    iget-boolean v8, v1, Lyads/dz3;->b:Z

    if-nez v8, :cond_6

    if-nez v16, :cond_0

    :cond_6
    if-eqz v8, :cond_7

    if-nez v14, :cond_7

    goto :goto_1

    :cond_7
    const/16 v8, 0x1d

    if-lt v6, v8, :cond_8

    .line 941
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v8

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v8, v10

    move-object v2, v11

    :goto_2
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 942
    :cond_8
    invoke-static {v0, v7}, Lyads/jz3;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 943
    :goto_3
    invoke-static {v0, v7}, Lyads/jz3;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-object/from16 v16, v0

    const/16 v0, 0x1d

    if-lt v6, v0, :cond_9

    .line 944
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-object/from16 v16, v11

    goto :goto_4

    .line 945
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyads/oj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    new-instance v6, Ljava/lang/String;

    .line 947
    const-string v2, "b214Lmdvb2dsZS4="
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    :try_start_2
    invoke-static {v2, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    sget-object v11, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 948
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "c2.android."

    .line 949
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "c2.google."

    .line 950
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v10

    move-object/from16 v2, v16

    goto :goto_2

    :cond_a
    :goto_4
    if-eqz v13, :cond_b

    .line 951
    iget-boolean v0, v1, Lyads/dz3;->b:Z

    if-eq v0, v14, :cond_c

    :cond_b
    if-nez v13, :cond_d

    iget-boolean v0, v1, Lyads/dz3;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v0, :cond_d

    :cond_c
    const/4 v11, 0x0

    move-object v6, v10

    move v10, v8

    move-object v8, v6

    move-object/from16 v6, v16

    const/16 v18, 0x0

    .line 952
    :try_start_4
    invoke-static/range {v6 .. v11}, Lyads/vy3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lyads/vy3;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v2, v6

    .line 953
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v6

    goto :goto_5

    :cond_d
    move-object v2, v10

    move v10, v8

    move-object v8, v2

    move-object/from16 v2, v16

    const/16 v18, 0x0

    if-nez v13, :cond_e

    if-eqz v14, :cond_e

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".secure"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    .line 955
    invoke-static/range {v6 .. v11}, Lyads/vy3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lyads/vy3;

    move-result-object v0

    .line 956
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v8, v10

    move/from16 v18, v11

    move-object/from16 v2, v16

    .line 957
    :goto_5
    :try_start_6
    sget v6, Lyads/u56;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const/16 v9, 0x17

    const-string v10, "MediaCodecUtil"

    if-gt v6, v9, :cond_f

    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping codec "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (failed to query capabilities)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 959
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_10
    :goto_7
    return-object v5

    :catch_5
    move-exception v0

    .line 961
    new-instance v1, Lyads/ez3;

    invoke-direct {v1, v0}, Lyads/ez3;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static a(Lyads/oe3;Lyads/vz2;)Ljava/util/ArrayList;
    .locals 1

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 905
    new-instance p0, Lr9;

    invoke-direct {p0, p1}, Lr9;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lyads/jz3;->a(Ljava/util/ArrayList;Lyads/iz3;)V

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 6

    const-class v0, Lyads/jz3;

    monitor-enter v0

    .line 994
    :try_start_0
    new-instance v1, Lyads/dz3;

    invoke-direct {v1, p0, p1, p2}, Lyads/dz3;-><init>(Ljava/lang/String;ZZ)V

    .line 995
    sget-object v2, Lyads/jz3;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v3

    .line 996
    :cond_0
    :try_start_1
    sget v3, Lyads/u56;->a:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 997
    new-instance v5, Lyads/hz3;

    invoke-direct {v5, p1, p2}, Lyads/hz3;-><init>(ZZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 998
    :cond_1
    new-instance v5, Lyads/gz3;

    invoke-direct {v5}, Lyads/gz3;-><init>()V

    .line 999
    :goto_0
    invoke-static {v1, v5}, Lyads/jz3;->a(Lyads/dz3;Lyads/fz3;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 1000
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-gt v4, v3, :cond_2

    const/16 p1, 0x17

    if-gt v3, p1, :cond_2

    .line 1001
    new-instance p1, Lyads/gz3;

    invoke-direct {p1}, Lyads/gz3;-><init>()V

    .line 1002
    invoke-static {v1, p1}, Lyads/jz3;->a(Lyads/dz3;Lyads/fz3;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1003
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1004
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Assuming: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 1005
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/vy3;

    iget-object v3, v3, Lyads/vy3;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1006
    const-string v3, "MediaCodecUtil"

    invoke-static {v3, p1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_2
    invoke-static {p0, p2}, Lyads/jz3;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1008
    invoke-static {p2}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object p0

    .line 1009
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9

    .line 1010
    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1011
    sget p0, Lyads/u56;->a:I

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_0

    sget-object p0, Lyads/u56;->b:Ljava/lang/String;

    sget-object v2, Lyads/m25;->e:Lyads/kz3;

    .line 1012
    invoke-virtual {v2}, Lyads/kz3;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1013
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 1014
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vy3;

    iget-object p0, p0, Lyads/vy3;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lyads/kz3;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1015
    invoke-virtual {v2}, Lyads/kz3;->L()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1016
    const-string v4, "audio/raw"

    const-string v5, "audio/raw"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lyads/vy3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lyads/vy3;

    move-result-object p0

    .line 1017
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    :cond_0
    new-instance p0, Lig;

    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lig;-><init>(I)V

    invoke-static {p1, p0}, Lyads/jz3;->a(Ljava/util/ArrayList;Lyads/iz3;)V

    .line 1019
    :cond_1
    sget p0, Lyads/u56;->a:I

    const/16 v2, 0x15

    if-ge p0, v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 1020
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/vy3;

    iget-object v2, v2, Lyads/vy3;->a:Ljava/lang/String;

    .line 1021
    sget-object v3, Lyads/m25;->e:Lyads/kz3;

    invoke-virtual {v3}, Lyads/kz3;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1022
    invoke-virtual {v3}, Lyads/kz3;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1023
    invoke-virtual {v3}, Lyads/kz3;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1024
    :cond_2
    new-instance v2, Ljg;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v2}, Lyads/jz3;->a(Ljava/util/ArrayList;Lyads/iz3;)V

    :cond_3
    const/16 v2, 0x20

    if-ge p0, v2, :cond_4

    .line 1025
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_4

    .line 1026
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vy3;

    iget-object p0, p0, Lyads/vy3;->a:Ljava/lang/String;

    .line 1027
    sget-object v0, Lyads/m25;->e:Lyads/kz3;

    invoke-virtual {v0}, Lyads/kz3;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1028
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vy3;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lyads/iz3;)V
    .locals 1

    .line 1055
    new-instance v0, Ld0a;

    invoke-direct {v0, p1}, Ld0a;-><init>(Lyads/iz3;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1032
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1033
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 1034
    :cond_0
    invoke-static {p1}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 1035
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/oj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1036
    const-string p1, "arc."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    return v1

    .line 1037
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 1038
    const-string v2, "b214Lmdvb2dsZS4="

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1039
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1040
    new-instance p1, Ljava/lang/String;

    .line 1041
    const-string v2, "b214LmZmbXBlZy4="

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1042
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1043
    new-instance p1, Ljava/lang/String;

    .line 1044
    const-string v2, "b214LnNlYy4="

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1045
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1046
    :cond_3
    new-instance p1, Ljava/lang/String;

    .line 1047
    const-string v2, "b214LnFjb20udmlkZW8uZGVjb2Rlci5oZXZjc3d2ZGVj"

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1048
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1049
    const-string p1, "c2.android."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1050
    const-string p1, "c2.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1051
    new-instance p1, Ljava/lang/String;

    .line 1052
    const-string v2, "b214Lg=="

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1053
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0
.end method

.method public static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    if-nez p2, :cond_0

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p0, Lyads/u56;->a:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_2

    new-instance p2, Ljava/lang/String;

    const-string v1, "Q0lQQUFDRGVjb2Rlcg=="

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/String;

    const-string v1, "Q0lQTVAzRGVjb2Rlcg=="

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/String;

    const-string v1, "Q0lQVm9yYmlzRGVjb2Rlcg=="

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/String;

    const-string v1, "Q0lQQU1STkJEZWNvZGVy"

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "AACDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "MP3Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 p2, 0x12

    if-ge p0, p2, :cond_4

    new-instance p2, Ljava/lang/String;

    const-string v1, "T01YLk1USy5BVURJTy5ERUNPREVSLkFBQw=="

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/String;

    const-string v1, "YTcw"

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v1, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/String;

    const-string v3, "WGlhb21p"

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p2, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v3, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/String;

    const-string v3, "SE0="

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p2, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return v0

    :cond_4
    const/16 p2, 0x10

    if-ne p0, p2, :cond_6

    new-instance v1, Ljava/lang/String;

    const-string v2, "T01YLnFjb20uYXVkaW8uZGVjb2Rlci5tcDM="

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/String;

    const-string v2, "ZGx4dQ=="

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "cHJvdG91"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "dmlsbGU="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "dmlsbGVwbHVz"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "dmlsbGVjMg=="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "Z2Vl"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "QzY2MDI="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "QzY2MDM="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "QzY2MDY="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "QzY2MTY="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "TDM2aA=="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "U08tMDJF"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    return v0

    :cond_6
    if-ne p0, p2, :cond_8

    new-instance p2, Ljava/lang/String;

    const-string v1, "T01YLnFjb20uYXVkaW8uZGVjb2Rlci5hYWM="

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Ljava/lang/String;

    const-string v1, "QzE1MDQ="

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v1, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/lang/String;

    const-string v3, "QzE1MDU="

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p2, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/lang/String;

    const-string v3, "QzE2MDQ="

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p2, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/lang/String;

    const-string v3, "QzE2MDU="

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p2, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    return v0

    :cond_8
    const/16 p2, 0x18

    const-string v1, "c2Ftc3VuZw=="

    if-ge p0, p2, :cond_b

    new-instance p2, Ljava/lang/String;

    const-string v2, "T01YLlNFQy5hYWMuZGVj"

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p2, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    new-instance p2, Ljava/lang/String;

    const-string v2, "T01YLkV4eW5vcy5BQUMuRGVjb2Rlcg=="

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p2, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_9
    new-instance p2, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p2, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lyads/u56;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    const-string v4, "emVyb2ZsdGU="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v4, "emVyb2x0ZQ=="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v4, "emVubHRl"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v4, "U0MtMDVH"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v4, "bWFyaW5lbHRlYXR0"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v4, "NDA0U0M="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v4, "U0MtMDRH"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v4, "U0NWMzE="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    return v0

    :cond_b
    const-string p2, "amZsdGU="

    const/16 v2, 0x13

    if-gt p0, v2, :cond_d

    new-instance v3, Ljava/lang/String;

    const-string v4, "T01YLlNFQy52cDguZGVj"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    sget-object v5, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v1, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lyads/u56;->b:Ljava/lang/String;

    const-string v3, "d2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/String;

    const-string v4, "c2VycmFubw=="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/String;

    const-string v4, "c2FudG9z"

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/String;

    const-string v4, "dDA="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return v0

    :cond_d
    if-gt p0, v2, :cond_e

    sget-object v1, Lyads/u56;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Ljava/lang/String;

    const-string v1, "T01YLnFjb20udmlkZW8uZGVjb2Rlci52cDg="

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    return v0

    :cond_e
    const/16 p2, 0x17

    if-gt p0, p2, :cond_f

    const-string p0, "audio/eac3-joc"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/String;

    const-string p2, "T01YLk1USy5BVURJTy5ERUNPREVSLkRTUEFDMw=="

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    sget-object p3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_10
    :goto_0
    return v0
.end method

.method public static synthetic b(Lyads/vy3;)I
    .locals 1

    .line 1838
    iget-object p0, p0, Lyads/vy3;->a:Ljava/lang/String;

    sget-object v0, Lyads/m25;->e:Lyads/kz3;

    invoke-virtual {v0}, Lyads/kz3;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Lyads/vz2;)Landroid/util/Pair;
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x200

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x40

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget-object v11, v0, Lyads/vz2;->j:Ljava/lang/String;

    const/16 v23, 0x0

    if-nez v11, :cond_0

    return-object v23

    :cond_0
    const-string v13, "\\."

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iget-object v13, v0, Lyads/vz2;->m:Ljava/lang/String;

    const-string v15, "video/dolby-vision"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v24, 0x5

    const/4 v3, 0x3

    const/16 v25, 0x0

    const-string v5, "MediaCodecUtil"

    if-eqz v13, :cond_1e

    iget-object v0, v0, Lyads/vz2;->j:Ljava/lang/String;

    array-length v13, v11

    const-string v15, "Ignoring malformed Dolby Vision codec string: "

    if-ge v13, v3, :cond_1

    invoke-static {v15, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_1
    sget-object v13, Lyads/jz3;->a:Ljava/util/regex/Pattern;

    aget-object v1, v11, v9

    invoke-virtual {v13, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v15, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_2
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "07"

    const-string v13, "06"

    const-string v15, "05"

    move/from16 v26, v7

    const-string v7, "04"

    move/from16 v27, v9

    const-string v9, "03"

    const-string v3, "02"

    move-object/from16 v29, v2

    const-string v2, "01"

    if-nez v0, :cond_3

    move-object/from16 v30, v4

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v17

    move-object/from16 v30, v4

    packed-switch v17, :pswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto/16 :goto_2

    :pswitch_0
    const-string v4, "09"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x9

    goto/16 :goto_2

    :pswitch_1
    const-string v4, "08"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x7

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x6

    goto :goto_2

    :pswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    move/from16 v4, v24

    goto :goto_2

    :pswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x4

    goto :goto_2

    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x3

    goto :goto_2

    :pswitch_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    move/from16 v4, v26

    goto :goto_2

    :pswitch_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    move/from16 v4, v27

    goto :goto_2

    :pswitch_9
    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :goto_1
    goto :goto_0

    :cond_d
    move/from16 v4, v25

    :goto_2
    packed-switch v4, :pswitch_data_1

    :goto_3
    move-object/from16 v4, v23

    goto :goto_4

    :pswitch_a
    move-object v4, v12

    goto :goto_4

    :pswitch_b
    move-object v4, v10

    goto :goto_4

    :pswitch_c
    move-object v4, v8

    goto :goto_4

    :pswitch_d
    move-object/from16 v4, v16

    goto :goto_4

    :pswitch_e
    move-object v4, v14

    goto :goto_4

    :pswitch_f
    move-object/from16 v4, v19

    goto :goto_4

    :pswitch_10
    move-object/from16 v4, v18

    goto :goto_4

    :pswitch_11
    move-object/from16 v4, v20

    goto :goto_4

    :pswitch_12
    move-object/from16 v4, v21

    goto :goto_4

    :pswitch_13
    move-object/from16 v4, v22

    :goto_4
    if-nez v4, :cond_e

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_e
    aget-object v0, v11, v26

    if-nez v0, :cond_f

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_5
    const/4 v1, -0x1

    goto/16 :goto_6

    :sswitch_0
    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    const/16 v1, 0xc

    goto/16 :goto_6

    :sswitch_1
    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5

    :cond_11
    const/16 v1, 0xb

    goto/16 :goto_6

    :sswitch_2
    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5

    :cond_12
    const/16 v1, 0xa

    goto/16 :goto_6

    :sswitch_3
    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    const/16 v1, 0x9

    goto/16 :goto_6

    :sswitch_4
    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_5

    :cond_14
    const/16 v1, 0x8

    goto :goto_6

    :sswitch_5
    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_5

    :cond_15
    const/4 v1, 0x7

    goto :goto_6

    :sswitch_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_5

    :cond_16
    const/4 v1, 0x6

    goto :goto_6

    :sswitch_7
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_5

    :cond_17
    move/from16 v1, v24

    goto :goto_6

    :sswitch_8
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_5

    :cond_18
    const/4 v1, 0x4

    goto :goto_6

    :sswitch_9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_5

    :cond_19
    const/4 v1, 0x3

    goto :goto_6

    :sswitch_a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_5

    :cond_1a
    move/from16 v1, v26

    goto :goto_6

    :sswitch_b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_5

    :cond_1b
    move/from16 v1, v27

    goto :goto_6

    :sswitch_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_5

    :cond_1c
    move/from16 v1, v25

    :goto_6
    packed-switch v1, :pswitch_data_2

    :goto_7
    move-object/from16 v2, v23

    goto :goto_8

    :pswitch_14
    move-object v2, v6

    goto :goto_8

    :pswitch_15
    move-object/from16 v2, v30

    goto :goto_8

    :pswitch_16
    move-object/from16 v2, v29

    goto :goto_8

    :pswitch_17
    move-object v2, v12

    goto :goto_8

    :pswitch_18
    move-object v2, v10

    goto :goto_8

    :pswitch_19
    move-object v2, v8

    goto :goto_8

    :pswitch_1a
    move-object/from16 v2, v16

    goto :goto_8

    :pswitch_1b
    move-object v2, v14

    goto :goto_8

    :pswitch_1c
    move-object/from16 v2, v19

    goto :goto_8

    :pswitch_1d
    move-object/from16 v2, v18

    goto :goto_8

    :pswitch_1e
    move-object/from16 v2, v20

    goto :goto_8

    :pswitch_1f
    move-object/from16 v2, v21

    goto :goto_8

    :pswitch_20
    move-object/from16 v2, v22

    :goto_8
    if-nez v2, :cond_1d

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_1d
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1e
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move/from16 v26, v7

    move/from16 v27, v9

    sget-object v1, Lyads/jz3;->c:Ljava/lang/String;

    aget-object v2, v11, v25

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x4000

    const v3, 0x8000

    const/high16 v4, 0x10000

    const/16 v7, 0x2000

    if-nez v1, :cond_1f

    sget-object v1, Lyads/jz3;->d:Ljava/lang/String;

    aget-object v9, v11, v25

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    const/16 v6, 0x8

    goto/16 :goto_16

    :cond_20
    sget-object v1, Lyads/jz3;->e:Ljava/lang/String;

    aget-object v9, v11, v25

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v9, 0x14

    if-eqz v1, :cond_32

    iget-object v0, v0, Lyads/vz2;->j:Ljava/lang/String;

    array-length v1, v11

    const/4 v2, 0x3

    if-ge v1, v2, :cond_21

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_21
    :try_start_0
    aget-object v1, v11, v27

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v11, v26

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_25

    move/from16 v2, v27

    if-eq v1, v2, :cond_24

    move/from16 v2, v26

    if-eq v1, v2, :cond_23

    const/4 v2, 0x3

    if-eq v1, v2, :cond_22

    const/4 v2, -0x1

    :goto_9
    const/4 v3, -0x1

    goto :goto_a

    :cond_22
    const/16 v2, 0x8

    goto :goto_9

    :cond_23
    const/4 v2, 0x4

    goto :goto_9

    :cond_24
    const/4 v2, 0x2

    goto :goto_9

    :cond_25
    const/4 v2, 0x1

    goto :goto_9

    :goto_a
    if-ne v2, v3, :cond_26

    const-string v0, "Unknown VP9 profile: "

    invoke-static {v1, v0, v5}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_26
    const/16 v1, 0xa

    if-eq v0, v1, :cond_30

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2f

    if-eq v0, v9, :cond_2e

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x29

    if-eq v0, v1, :cond_29

    const/16 v1, 0x32

    if-eq v0, v1, :cond_28

    const/16 v1, 0x33

    if-eq v0, v1, :cond_27

    packed-switch v0, :pswitch_data_3

    const/4 v1, -0x1

    const/4 v3, -0x1

    goto :goto_b

    :pswitch_21
    move v3, v7

    const/4 v1, -0x1

    goto :goto_b

    :pswitch_22
    const/4 v1, -0x1

    const/16 v3, 0x1000

    goto :goto_b

    :pswitch_23
    const/4 v1, -0x1

    const/16 v3, 0x800

    goto :goto_b

    :cond_27
    const/4 v1, -0x1

    const/16 v3, 0x200

    goto :goto_b

    :cond_28
    const/4 v1, -0x1

    const/16 v3, 0x100

    goto :goto_b

    :cond_29
    const/4 v1, -0x1

    const/16 v3, 0x80

    goto :goto_b

    :cond_2a
    const/4 v1, -0x1

    const/16 v3, 0x40

    goto :goto_b

    :cond_2b
    const/4 v1, -0x1

    const/16 v3, 0x20

    goto :goto_b

    :cond_2c
    const/4 v1, -0x1

    const/16 v3, 0x10

    goto :goto_b

    :cond_2d
    const/4 v1, -0x1

    const/16 v3, 0x8

    goto :goto_b

    :cond_2e
    const/4 v1, -0x1

    const/4 v3, 0x4

    goto :goto_b

    :cond_2f
    const/4 v1, -0x1

    const/4 v3, 0x2

    goto :goto_b

    :cond_30
    const/4 v1, -0x1

    const/4 v3, 0x1

    :goto_b
    if-ne v3, v1, :cond_31

    const-string v1, "Unknown VP9 level: "

    invoke-static {v0, v1, v5}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_31
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_32
    sget-object v1, Lyads/jz3;->f:Ljava/lang/String;

    aget-object v13, v11, v25

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    sget-object v1, Lyads/jz3;->g:Ljava/lang/String;

    aget-object v13, v11, v25

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto/16 :goto_11

    :cond_33
    sget-object v1, Lyads/jz3;->h:Ljava/lang/String;

    aget-object v6, v11, v25

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lyads/vz2;->j:Ljava/lang/String;

    iget-object v0, v0, Lyads/vz2;->y:Lyads/x20;

    array-length v6, v11

    const/4 v8, 0x4

    if-ge v6, v8, :cond_34

    const-string v0, "Ignoring malformed AV1 codec string: "

    invoke-static {v0, v1, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_34
    const/16 v27, 0x1

    :try_start_1
    aget-object v6, v11, v27

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x2

    aget-object v9, v11, v8

    move/from16 v10, v25

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v28, 0x3

    aget-object v9, v11, v28

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_35

    const-string v0, "Unknown AV1 profile: "

    invoke-static {v6, v0, v5}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_35
    const/16 v6, 0x8

    if-eq v1, v6, :cond_36

    const/16 v9, 0xa

    if-eq v1, v9, :cond_36

    const-string v0, "Unknown AV1 bit depth: "

    invoke-static {v1, v0, v5}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_36
    if-ne v1, v6, :cond_37

    const/4 v0, 0x1

    goto :goto_c

    :cond_37
    if-eqz v0, :cond_39

    iget-object v1, v0, Lyads/x20;->e:[B

    if-nez v1, :cond_38

    iget v0, v0, Lyads/x20;->d:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_38

    const/4 v1, 0x6

    if-ne v0, v1, :cond_39

    :cond_38
    const/16 v0, 0x1000

    goto :goto_c

    :cond_39
    const/4 v0, 0x2

    :goto_c
    packed-switch v8, :pswitch_data_4

    const/4 v1, -0x1

    :goto_d
    const/4 v3, -0x1

    goto :goto_e

    :pswitch_24
    const/high16 v1, 0x800000

    goto :goto_d

    :pswitch_25
    const/high16 v1, 0x400000

    goto :goto_d

    :pswitch_26
    const/high16 v1, 0x200000

    goto :goto_d

    :pswitch_27
    const/high16 v1, 0x100000

    goto :goto_d

    :pswitch_28
    const/high16 v1, 0x80000

    goto :goto_d

    :pswitch_29
    const/high16 v1, 0x40000

    goto :goto_d

    :pswitch_2a
    const/high16 v1, 0x20000

    goto :goto_d

    :pswitch_2b
    move v1, v4

    goto :goto_d

    :pswitch_2c
    move v1, v3

    goto :goto_d

    :pswitch_2d
    move v1, v2

    goto :goto_d

    :pswitch_2e
    move v1, v7

    goto :goto_d

    :pswitch_2f
    const/16 v1, 0x1000

    goto :goto_d

    :pswitch_30
    const/16 v1, 0x800

    goto :goto_d

    :pswitch_31
    const/16 v1, 0x400

    goto :goto_d

    :pswitch_32
    const/16 v1, 0x200

    goto :goto_d

    :pswitch_33
    const/16 v1, 0x100

    goto :goto_d

    :pswitch_34
    const/16 v1, 0x80

    goto :goto_d

    :pswitch_35
    const/16 v1, 0x40

    goto :goto_d

    :pswitch_36
    const/16 v1, 0x20

    goto :goto_d

    :pswitch_37
    const/16 v1, 0x10

    goto :goto_d

    :pswitch_38
    move v1, v6

    goto :goto_d

    :pswitch_39
    const/4 v1, 0x4

    goto :goto_d

    :pswitch_3a
    const/4 v1, 0x2

    goto :goto_d

    :pswitch_3b
    const/4 v1, 0x1

    goto :goto_d

    :goto_e
    if-ne v1, v3, :cond_3a

    const-string v0, "Unknown AV1 level: "

    invoke-static {v8, v0, v5}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_3a
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :catch_1
    const-string v0, "Ignoring malformed AV1 codec string: "

    invoke-static {v0, v1, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_3b
    sget-object v1, Lyads/jz3;->i:Ljava/lang/String;

    const/16 v25, 0x0

    aget-object v2, v11, v25

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v0, v0, Lyads/vz2;->j:Ljava/lang/String;

    array-length v1, v11

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3c

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_3c
    const/16 v27, 0x1

    :try_start_2
    aget-object v1, v11, v27

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lyads/z84;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/16 v26, 0x2

    aget-object v1, v11, v26

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_42

    if-eq v1, v9, :cond_41

    const/16 v2, 0x17

    if-eq v1, v2, :cond_40

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3e

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_3d

    packed-switch v1, :pswitch_data_5

    const/4 v1, -0x1

    :goto_f
    const/4 v3, -0x1

    goto :goto_10

    :pswitch_3c
    const/4 v1, 0x6

    goto :goto_f

    :pswitch_3d
    move/from16 v1, v24

    goto :goto_f

    :pswitch_3e
    const/4 v1, 0x4

    goto :goto_f

    :pswitch_3f
    const/4 v1, 0x3

    goto :goto_f

    :pswitch_40
    const/4 v1, 0x2

    goto :goto_f

    :pswitch_41
    const/4 v1, 0x1

    goto :goto_f

    :cond_3d
    const/16 v1, 0x2a

    goto :goto_f

    :cond_3e
    const/16 v1, 0x27

    goto :goto_f

    :cond_3f
    const/16 v1, 0x1d

    goto :goto_f

    :cond_40
    const/16 v1, 0x17

    goto :goto_f

    :cond_41
    move v1, v9

    goto :goto_f

    :cond_42
    const/16 v1, 0x11

    goto :goto_f

    :goto_10
    if-eq v1, v3, :cond_43

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :catch_2
    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-object v23

    :cond_44
    :goto_11
    iget-object v0, v0, Lyads/vz2;->j:Ljava/lang/String;

    array-length v1, v11

    const/4 v9, 0x4

    if-ge v1, v9, :cond_45

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_45
    sget-object v1, Lyads/jz3;->a:Ljava/util/regex/Pattern;

    const/4 v9, 0x1

    aget-object v13, v11, v9

    invoke-virtual {v1, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_46

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_46
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/16 v26, 0x1

    :goto_12
    const/16 v28, 0x3

    goto :goto_13

    :cond_47
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v26, 0x2

    goto :goto_12

    :goto_13
    aget-object v0, v11, v28

    if-nez v0, :cond_48

    goto/16 :goto_14

    :cond_48
    sget-object v1, Lyads/m25;->e:Lyads/kz3;

    invoke-virtual {v1}, Lyads/kz3;->A()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    move-object/from16 v2, v22

    goto/16 :goto_15

    :cond_49
    invoke-virtual {v1}, Lyads/kz3;->B()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    move-object/from16 v2, v20

    goto/16 :goto_15

    :cond_4a
    invoke-virtual {v1}, Lyads/kz3;->C()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    move-object/from16 v2, v19

    goto/16 :goto_15

    :cond_4b
    invoke-virtual {v1}, Lyads/kz3;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    move-object/from16 v2, v16

    goto/16 :goto_15

    :cond_4c
    invoke-virtual {v1}, Lyads/kz3;->E()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    move-object v2, v10

    goto/16 :goto_15

    :cond_4d
    invoke-virtual {v1}, Lyads/kz3;->s()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    move-object/from16 v2, v29

    goto/16 :goto_15

    :cond_4e
    invoke-virtual {v1}, Lyads/kz3;->t()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4f

    move-object v2, v6

    goto/16 :goto_15

    :cond_4f
    invoke-virtual {v1}, Lyads/kz3;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_15

    :cond_50
    invoke-virtual {v1}, Lyads/kz3;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_15

    :cond_51
    invoke-virtual {v1}, Lyads/kz3;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_15

    :cond_52
    invoke-virtual {v1}, Lyads/kz3;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_15

    :cond_53
    invoke-virtual {v1}, Lyads/kz3;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/high16 v1, 0x400000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_15

    :cond_54
    invoke-virtual {v1}, Lyads/kz3;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_15

    :cond_55
    invoke-virtual {v1}, Lyads/kz3;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move-object/from16 v2, v21

    goto/16 :goto_15

    :cond_56
    invoke-virtual {v1}, Lyads/kz3;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move-object/from16 v2, v18

    goto/16 :goto_15

    :cond_57
    invoke-virtual {v1}, Lyads/kz3;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    move-object v2, v14

    goto/16 :goto_15

    :cond_58
    invoke-virtual {v1}, Lyads/kz3;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    move-object v2, v8

    goto/16 :goto_15

    :cond_59
    invoke-virtual {v1}, Lyads/kz3;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    move-object v2, v12

    goto/16 :goto_15

    :cond_5a
    invoke-virtual {v1}, Lyads/kz3;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v2, v30

    goto/16 :goto_15

    :cond_5b
    invoke-virtual {v1}, Lyads/kz3;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_5c
    invoke-virtual {v1}, Lyads/kz3;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_5d
    invoke-virtual {v1}, Lyads/kz3;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_5e
    invoke-virtual {v1}, Lyads/kz3;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/high16 v1, 0x80000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_5f
    invoke-virtual {v1}, Lyads/kz3;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_60
    invoke-virtual {v1}, Lyads/kz3;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_61
    invoke-virtual {v1}, Lyads/kz3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_62
    :goto_14
    move-object/from16 v2, v23

    :goto_15
    if-nez v2, :cond_63

    const-string v1, "Unknown HEVC level string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_63
    new-instance v0, Landroid/util/Pair;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_64
    const-string v1, "Unknown HEVC profile string: "

    invoke-static {v1, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :goto_16
    iget-object v0, v0, Lyads/vz2;->j:Ljava/lang/String;

    array-length v1, v11

    const-string v8, "Ignoring malformed AVC codec string: "

    const/4 v9, 0x2

    if-ge v1, v9, :cond_65

    invoke-static {v8, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_65
    const/16 v27, 0x1

    :try_start_3
    aget-object v1, v11, v27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x6

    if-ne v1, v10, :cond_66

    aget-object v1, v11, v27

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10

    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v10, v11, v27

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v26, 0x2

    const/16 v27, 0x1

    goto :goto_17

    :cond_66
    const/16 v9, 0x10

    const/4 v12, 0x4

    array-length v1, v11

    const/4 v10, 0x3

    if-lt v1, v10, :cond_70

    const/16 v27, 0x1

    aget-object v1, v11, v27

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v26, 0x2

    aget-object v10, v11, v26

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_17
    const/16 v8, 0x42

    if-eq v1, v8, :cond_6d

    const/16 v8, 0x4d

    if-eq v1, v8, :cond_6c

    const/16 v8, 0x58

    if-eq v1, v8, :cond_6b

    const/16 v8, 0x64

    if-eq v1, v8, :cond_6a

    const/16 v8, 0x6e

    if-eq v1, v8, :cond_69

    const/16 v8, 0x7a

    if-eq v1, v8, :cond_68

    const/16 v8, 0xf4

    if-eq v1, v8, :cond_67

    const/4 v8, -0x1

    :goto_18
    const/4 v10, -0x1

    goto :goto_19

    :cond_67
    const/16 v8, 0x40

    goto :goto_18

    :cond_68
    const/16 v8, 0x20

    goto :goto_18

    :cond_69
    move v8, v9

    goto :goto_18

    :cond_6a
    move v8, v6

    goto :goto_18

    :cond_6b
    move v8, v12

    goto :goto_18

    :cond_6c
    move/from16 v8, v26

    goto :goto_18

    :cond_6d
    move/from16 v8, v27

    goto :goto_18

    :goto_19
    if-ne v8, v10, :cond_6e

    const-string v0, "Unknown AVC profile: "

    invoke-static {v1, v0, v5}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_6e
    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    packed-switch v0, :pswitch_data_8

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    const/4 v1, -0x1

    :goto_1a
    const/4 v3, -0x1

    goto :goto_1b

    :pswitch_42
    move v1, v4

    goto :goto_1a

    :pswitch_43
    move v1, v3

    goto :goto_1a

    :pswitch_44
    move v1, v2

    goto :goto_1a

    :pswitch_45
    move v1, v7

    goto :goto_1a

    :pswitch_46
    const/16 v1, 0x1000

    goto :goto_1a

    :pswitch_47
    const/16 v1, 0x800

    goto :goto_1a

    :pswitch_48
    const/16 v1, 0x400

    goto :goto_1a

    :pswitch_49
    const/16 v1, 0x200

    goto :goto_1a

    :pswitch_4a
    const/16 v1, 0x100

    goto :goto_1a

    :pswitch_4b
    const/16 v1, 0x80

    goto :goto_1a

    :pswitch_4c
    const/16 v1, 0x40

    goto :goto_1a

    :pswitch_4d
    const/16 v1, 0x20

    goto :goto_1a

    :pswitch_4e
    move v1, v9

    goto :goto_1a

    :pswitch_4f
    move v1, v6

    goto :goto_1a

    :pswitch_50
    move v1, v12

    goto :goto_1a

    :pswitch_51
    move/from16 v1, v27

    goto :goto_1a

    :goto_1b
    if-ne v1, v3, :cond_6f

    const-string v1, "Unknown AVC level: "

    invoke-static {v0, v1, v5}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v23

    :cond_6f
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_70
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v23

    :catch_3
    invoke-static {v8, v0, v5}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_c
        0x602 -> :sswitch_b
        0x603 -> :sswitch_a
        0x604 -> :sswitch_9
        0x605 -> :sswitch_8
        0x606 -> :sswitch_7
        0x607 -> :sswitch_6
        0x608 -> :sswitch_5
        0x609 -> :sswitch_4
        0x61f -> :sswitch_3
        0x620 -> :sswitch_2
        0x621 -> :sswitch_1
        0x622 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xa
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x14
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1e
        :pswitch_4a
        :pswitch_49
        :pswitch_48
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x28
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x32
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch
.end method

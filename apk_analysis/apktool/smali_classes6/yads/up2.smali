.class public final Lyads/up2;
.super Lyads/zv4;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Lyads/vz2;

.field public final h:I

.field public final i:Lyads/b14;

.field public final j:Z


# direct methods
.method public constructor <init>(ILjava/lang/Exception;I)V
    .locals 10

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 147
    invoke-direct/range {v0 .. v9}, Lyads/up2;-><init>(ILjava/lang/Exception;Ljava/lang/String;ILjava/lang/String;ILyads/vz2;IZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;Ljava/lang/String;ILjava/lang/String;ILyads/vz2;IZ)V
    .locals 13

    move/from16 v8, p8

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    :goto_0
    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    goto :goto_2

    :cond_0
    const-string v0, "Remote error"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", format_supported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lyads/u56;->a:I

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    if-eq v8, v0, :cond_3

    const/4 v0, 0x4

    if-ne v8, v0, :cond_2

    const-string v0, "YES"

    goto :goto_1

    :cond_2
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_1

    :cond_4
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_1

    :cond_5
    const-string v0, "NO_UNSUPPORTED_TYPE"

    goto :goto_1

    :cond_6
    const-string v0, "NO"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    const-string v0, "Source error"

    :goto_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ": "

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move-object v2, p2

    move/from16 v3, p4

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lyads/up2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILyads/vz2;ILyads/b14;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILyads/vz2;ILyads/b14;JZ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    move/from16 v6, p12

    .line 137
    invoke-direct/range {v0 .. v5}, Lyads/zv4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    if-eqz v6, :cond_1

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    const/4 p1, 0x3

    if-ne p4, p1, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0

    .line 140
    :cond_3
    :goto_1
    iput p4, p0, Lyads/up2;->d:I

    .line 141
    iput-object p5, p0, Lyads/up2;->e:Ljava/lang/String;

    .line 142
    iput p6, p0, Lyads/up2;->f:I

    .line 143
    iput-object p7, p0, Lyads/up2;->g:Lyads/vz2;

    .line 144
    iput p8, p0, Lyads/up2;->h:I

    move-object/from16 p1, p9

    .line 145
    iput-object p1, p0, Lyads/up2;->i:Lyads/b14;

    .line 146
    iput-boolean v6, p0, Lyads/up2;->j:Z

    return-void
.end method

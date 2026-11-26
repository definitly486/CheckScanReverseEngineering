.class public final Lcom/my/target/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/a2$a;,
        Lcom/my/target/a2$b;,
        Lcom/my/target/a2$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/my/target/a2$a;

.field public c:Lcom/my/target/w0;

.field public d:Lcom/my/target/yc;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/my/target/a2$a;

    invoke-direct {v0, p0}, Lcom/my/target/a2$a;-><init>(Lcom/my/target/a2;)V

    iput-object v0, p0, Lcom/my/target/a2;->b:Lcom/my/target/a2$a;

    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/my/target/a2;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/net/Uri;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mytarget"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p0, "onloadmraidjs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MraidBridge: JS call onLoad"

    invoke-static {v3, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "MraidBridge: Got mytarget scheme - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "mraid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MraidBridge: Got mraid command - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbea;

    iget-object v2, p0, Lcom/my/target/a2;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbea;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mraidbridge.nativeComplete("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lbea;->b:Ljava/lang/String;

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v4, "}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ltz v1, :cond_3

    if-lez v4, :cond_3

    if-ge v1, v4, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_3

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/my/target/a2;->e(Lbea;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/my/target/yc;->g:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/my/target/w0;->b(Landroid/net/Uri;)V

    :cond_5
    return-void

    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MraidBridge: Invalid MRAID URL - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-string v0, "Mraid command sent an invalid URL"

    invoke-virtual {p0, p1, v0}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "MraidBridge: Attempted to inject Javascript into MRAID WebView while was not attached - \n\t"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "javascript:window."

    const-string v2, ";"

    invoke-static {v0, p1, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MraidBridge: Injecting Javascript into MRAID WebView "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    invoke-virtual {p0, p1}, Lcom/my/target/h1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraidbridge.fireErrorEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lbea;Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lbea;->b:Ljava/lang/String;

    iget-boolean v1, v1, Lbea;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/my/target/yc;->g:Z

    if-nez v1, :cond_0

    const-string v1, "Cannot execute this command unless the user clicks"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    if-nez v1, :cond_1

    const-string v1, "Invalid state to execute this command"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/my/target/a2;->d:Lcom/my/target/yc;

    if-nez v1, :cond_2

    const-string v1, "The current WebView is being destroyed"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v4, "playheadEvent"

    const-string v5, "vpaidEvent"

    const/16 v7, 0x8

    const-string v8, "setOrientationProperties"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v1, v11

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "setResizeProperties"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "storePicture"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v7

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "open"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "createCalendarEvent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "resize"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    move v1, v9

    goto :goto_1

    :sswitch_a
    const-string v1, "expand"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    move v1, v10

    goto :goto_1

    :sswitch_b
    const-string v1, "playVideo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    move v1, v12

    goto :goto_1

    :sswitch_c
    const-string v1, "vpaidInit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    move v1, v13

    :goto_1
    const-string v14, "url"

    const-string v15, "Calling VPAID command before VPAID init"

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    if-nez v2, :cond_10

    const-string v1, "playheadEvent params cannot be null"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v1, "remain"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v1, v5

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    iget-boolean v3, v0, Lcom/my/target/w0;->s:Z

    if-nez v3, :cond_11

    iget-object v0, v0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    invoke-virtual {v0, v4, v15}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_16

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_16

    iget-object v3, v0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz v3, :cond_16

    iget-object v0, v0, Lcom/my/target/w0;->o:Lwv9;

    if-eqz v0, :cond_16

    invoke-interface {v3, v1, v2}, Lcom/my/target/g1$a;->d(FF)V

    return-void

    :pswitch_1
    if-nez v2, :cond_12

    const-string v1, "vpaidEvent params cannot be null"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string v1, "event"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    iget-boolean v2, v0, Lcom/my/target/w0;->s:Z

    if-nez v2, :cond_13

    iget-object v0, v0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    invoke-virtual {v0, v5, v15}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v2, v0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz v2, :cond_14

    move v3, v12

    goto :goto_2

    :cond_14
    move v3, v13

    :goto_2
    iget-object v0, v0, Lcom/my/target/w0;->o:Lwv9;

    if-eqz v0, :cond_15

    goto :goto_3

    :cond_15
    move v12, v13

    :goto_3
    and-int/2addr v3, v12

    if-eqz v3, :cond_16

    invoke-interface {v2, v0, v1}, Lcom/my/target/g1$a;->l(Lwv9;Ljava/lang/String;)V

    :cond_16
    :goto_4
    return-void

    :pswitch_2
    if-nez v2, :cond_17

    const-string v1, "setResizeProperties params cannot be null"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const-string v1, "width"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v1, "height"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v1, "offsetX"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v1, "offsetY"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v1, "allowOffscreen"

    invoke-virtual {v2, v1, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v1, "customClosePosition"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_6

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_6

    :sswitch_d
    const-string v2, "top-center"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6

    :sswitch_e
    const-string v2, "bottom-center"

    goto :goto_5

    :sswitch_f
    const-string v2, "bottom-right"

    goto :goto_5

    :sswitch_10
    const-string v2, "bottom-left"

    goto :goto_5

    :sswitch_11
    const-string v2, "top-left"

    goto :goto_5

    :sswitch_12
    const-string v2, "top-right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_6

    :sswitch_13
    const-string v2, "center"

    goto :goto_5

    :goto_6
    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "InterstitialMraidPresenter: SetResizeProperties method not used with interstitials"

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string v0, "MraidBridge: storePicture is currently unsupported"

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    if-nez v2, :cond_19

    const-string v1, "setOrientationProperties params cannot be null"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    const-string v1, "allowOrientationChange"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "forceOrientation"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "none"

    sparse-switch v4, :sswitch_data_2

    :goto_7
    move v4, v11

    goto :goto_8

    :sswitch_14
    const-string v4, "landscape"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_7

    :cond_1a
    move v4, v10

    goto :goto_8

    :sswitch_15
    const-string v4, "portrait"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_7

    :cond_1b
    move v4, v12

    goto :goto_8

    :sswitch_16
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_7

    :cond_1c
    move v4, v13

    :goto_8
    packed-switch v4, :pswitch_data_1

    move-object v4, v6

    goto :goto_a

    :pswitch_5
    move v11, v13

    goto :goto_9

    :pswitch_6
    move v11, v12

    :goto_9
    :pswitch_7
    new-instance v4, Ljfa;

    invoke-direct {v4, v2, v11}, Ljfa;-><init>(Ljava/lang/String;I)V

    :goto_a
    if-nez v4, :cond_1d

    const-string v1, "wrong orientation "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    iget-object v2, v0, Lcom/my/target/w0;->f:Lcom/my/target/a2;

    invoke-virtual {v0, v4}, Lcom/my/target/w0;->c(Ljfa;)Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to force orientation to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iput-boolean v1, v0, Lcom/my/target/w0;->t:Z

    iput-object v4, v0, Lcom/my/target/w0;->u:Ljfa;

    iget-object v1, v4, Ljfa;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Lcom/my/target/w0;->t:Z

    iget-object v3, v0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_20

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_1f

    iget-object v2, v0, Lcom/my/target/w0;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1f
    iput-object v6, v0, Lcom/my/target/w0;->k:Ljava/lang/Integer;

    return-void

    :cond_20
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_21

    const-string v0, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-virtual {v2, v8, v0}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v1, :cond_23

    if-eq v2, v12, :cond_22

    if-eq v2, v10, :cond_22

    move v6, v12

    goto :goto_c

    :cond_22
    :goto_b
    const/16 v6, 0x9

    goto :goto_c

    :cond_23
    if-ne v10, v1, :cond_25

    if-eq v2, v10, :cond_24

    if-eq v2, v9, :cond_24

    move v6, v13

    goto :goto_c

    :cond_24
    move v6, v7

    goto :goto_c

    :cond_25
    const-string v1, "UiUtils: Unknown screen orientation. Defaulting to portrait"

    invoke-static {v6, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_c
    invoke-virtual {v0, v6}, Lcom/my/target/w0;->d(I)Z

    return-void

    :cond_26
    iget-object v1, v0, Lcom/my/target/w0;->u:Ljfa;

    iget v1, v1, Ljfa;->a:I

    invoke-virtual {v0, v1}, Lcom/my/target/w0;->d(I)Z

    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    invoke-virtual {v0}, Lcom/my/target/w0;->h()V

    return-void

    :pswitch_9
    if-nez v2, :cond_27

    const-string v1, "open params cannot be null"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    invoke-virtual {v0, v1}, Lcom/my/target/w0;->b(Landroid/net/Uri;)V

    return-void

    :pswitch_a
    const-string v1, "Unspecified MRAID Javascript command"

    invoke-virtual {v0, v3, v1}, Lcom/my/target/a2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_b
    const-string v0, "MraidBridge: createCalendarEvent is currently unsupported"

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "InterstitialMraidPresenter: Resize method not used with interstitials"

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_d
    if-eqz v2, :cond_28

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    :cond_28
    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "InterstitialMraidPresenter: Expand method not used with interstitials"

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_e
    const-string v0, "MraidBridge: playVideo is currently unsupported"

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object v0, v0, Lcom/my/target/a2;->c:Lcom/my/target/w0;

    iput-boolean v12, v0, Lcom/my/target/w0;->s:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71e3df8e -> :sswitch_c
        -0x706c8659 -> :sswitch_b
        -0x4cd72166 -> :sswitch_a
        -0x37b2634c -> :sswitch_9
        -0x2bba19a0 -> :sswitch_8
        0x0 -> :sswitch_7
        0x34264a -> :sswitch_6
        0x5a5ddf8 -> :sswitch_5
        0x7f3dfe1 -> :sswitch_4
        0x1b5f6cdd -> :sswitch_3
        0x253cb189 -> :sswitch_2
        0x35332378 -> :sswitch_1
        0x6b2b2fe6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_13
        -0x4e5f7c5c -> :sswitch_12
        -0x3c587281 -> :sswitch_11
        -0x27103597 -> :sswitch_10
        0x455fe3fa -> :sswitch_f
        0x4ccee637 -> :sswitch_e
        0x68a23bcd -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x33af38 -> :sswitch_16
        0x2b77bb9b -> :sswitch_15
        0x5545f2bb -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final f(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/my/target/a2;->f:Z

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraidbridge.setIsViewable("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/a2;->c(Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/my/target/a2;->f:Z

    return-void
.end method

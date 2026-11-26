.class public final Lss5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lss5;->f:I

    iput-object p2, p0, Lss5;->g:Ljava/lang/Object;

    iput-object p3, p0, Lss5;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lss5;->f:I

    iget-object v1, p0, Lss5;->h:Ljava/lang/Object;

    iget-object p0, p0, Lss5;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lvm8;

    iget-object p0, p0, Lvm8;->b:Lvm8$b;

    check-cast v1, Lwm8;

    iget-object p1, v1, Lwm8;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvm8$b;->onBadgeQuestionClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, La57;

    check-cast v1, Lhv6;

    check-cast p0, Lts5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, La57;->b:Ljava/lang/Object;

    iget-object p1, p1, La57;->a:Lz47;

    iget v2, p1, Lz47;->e:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_4

    const/16 p0, 0xcc

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eq v2, p0, :cond_3

    const/16 p0, 0x199

    if-eq v2, p0, :cond_2

    const/16 p0, 0x1f4

    if-eq v2, p0, :cond_1

    const/16 p0, 0x1fe

    if-eq v2, p0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    iget-object p1, p1, Lz47;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getOfdUrls code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " errorBody="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object p0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v1, p0}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, p1, Lbu0;->c:J

    new-instance p0, Lc57;

    invoke-direct {p0, v3, v0, v1, p1}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {v2, p0}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v2, Lbu0;

    invoke-direct {v2}, Lbu0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1, v1, p1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, v2, Lbu0;->c:J

    new-instance p1, Lc57;

    invoke-direct {p1, v3, v0, v1, v2}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {p0, p1}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v2, Lbu0;

    invoke-direct {v2}, Lbu0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1, v1, p1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, v2, Lbu0;->c:J

    new-instance p1, Lc57;

    invoke-direct {p1, v3, v0, v1, v2}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {p0, p1}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v2, Lbu0;

    invoke-direct {v2}, Lbu0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1, v1, p1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, v2, Lbu0;->c:J

    new-instance p1, Lc57;

    invoke-direct {p1, v3, v0, v1, v2}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {p0, p1}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v2, Lbu0;

    invoke-direct {v2}, Lbu0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1, v1, p1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, v2, Lbu0;->c:J

    new-instance p1, Lc57;

    invoke-direct {p1, v3, v0, v1, v2}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {p0, p1}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto :goto_0

    :cond_4
    check-cast v0, Lkd4;

    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Liv6;

    new-instance v4, Lx39;

    invoke-direct {v4, v2}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0, v4}, Lcom/google/gson/Gson;->a(Lpc4;Lx39;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liv6;

    invoke-static {v3, p1}, La57;->c(ILiv6;)La57;

    move-result-object p1

    invoke-static {p1}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lts5;->a:Ltu6;

    invoke-interface {p0, v1}, Ltu6;->c(Lhv6;)Lmz7;

    move-result-object p0

    goto :goto_0

    :cond_5
    check-cast v0, Lkd4;

    invoke-virtual {p0, v0, v1}, Lts5;->h(Lkd4;Lhv6;)Lmz7;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

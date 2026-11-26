.class public final Lc54;
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

    iput p1, p0, Lc54;->f:I

    iput-object p2, p0, Lc54;->g:Ljava/lang/Object;

    iput-object p3, p0, Lc54;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lc54;->f:I

    iget-object v1, p0, Lc54;->h:Ljava/lang/Object;

    iget-object p0, p0, Lc54;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, La57;->b:Ljava/lang/Object;

    iget-object p1, p1, La57;->a:Lz47;

    invoke-virtual {p1}, Lz47;->o()Z

    move-result v2

    iget v3, p1, Lz47;->e:I

    const-string v4, "postOfdResults code="

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    packed-switch v3, :pswitch_data_1

    :pswitch_0
    new-instance p0, Ljava/lang/Exception;

    invoke-static {v3, v4}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object p0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v5, v6, v6, p0}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, p1, Lbu0;->c:J

    new-instance p0, Lc57;

    invoke-direct {p0, v7, v0, v1, p1}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {v3, p0}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v5, v6, v6, p0}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, p1, Lbu0;->c:J

    new-instance p0, Lc57;

    invoke-direct {p0, v7, v0, v1, p1}, Lc57;-><init>(Lj95;JLbu0;)V

    const/16 p1, 0xcc

    invoke-static {p1, p0}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_2
    check-cast p0, Lts5;

    check-cast v0, Lkd4;

    check-cast v1, Lhv6;

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lts5;->h(Lkd4;Lhv6;)Lmz7;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    iget-object p0, p0, Lts5;->a:Ltu6;

    invoke-interface {p0, v1}, Ltu6;->c(Lhv6;)Lmz7;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    check-cast v0, Lpc4;

    new-instance p1, Lx39;

    const-class v1, Liv6;

    invoke-direct {p1, v1}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/Gson;->a(Lpc4;Lx39;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liv6;

    invoke-static {v3, p0}, La57;->c(ILiv6;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const/16 p0, 0x19c

    if-eq v3, p0, :cond_3

    const/16 p0, 0x1f4

    if-eq v3, p0, :cond_2

    const/16 p0, 0x1fe

    if-eq v3, p0, :cond_1

    new-instance p0, Ljava/lang/Exception;

    iget-object p1, p1, Lz47;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object p0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v5, v6, v6, p0}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v0, p1, Lbu0;->c:J

    new-instance p0, Lc57;

    invoke-direct {p0, v7, v0, v1, p1}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {v3, p0}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v6, v6, p1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v1, v0, Lbu0;->c:J

    new-instance p1, Lc57;

    invoke-direct {p1, v7, v1, v2, v0}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {p0, p1}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v6, v6, p1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v1, v0, Lbu0;->c:J

    new-instance p1, Lc57;

    invoke-direct {p1, v7, v1, v2, v0}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {p0, p1}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v6, v6, p1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v1, v0, Lbu0;->c:J

    new-instance p1, Lc57;

    invoke-direct {p1, v7, v1, v2, v0}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {p0, p1}, La57;->a(ILc57;)La57;

    move-result-object p0

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;->b:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;

    check-cast v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    iget-object p1, v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;->b:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;->onConditionsClicked(Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

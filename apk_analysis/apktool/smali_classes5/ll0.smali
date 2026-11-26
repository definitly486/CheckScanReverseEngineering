.class public final synthetic Lll0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lcom/my/tracker/obfuscated/i0$c;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Lll0;->b:I

    iput-object p1, p0, Lll0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lts5;Lms5;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lll0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lll0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lll0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/tracker/obfuscated/r0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/r0;->b(Ljava/util/List;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lll0;->b:I

    iget-object p0, p0, Lll0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lms5;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1a2

    invoke-static {p1}, Lts5;->d(Ljava/lang/String;)Lc57;

    move-result-object p1

    invoke-static {v0, p1}, La57;->a(ILc57;)La57;

    move-result-object p1

    invoke-static {p0, p1}, Lts5;->e(Lms5;La57;)Lus5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :pswitch_1
    check-cast p0, Lx51;

    invoke-virtual {p0, p1}, Lx51;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_2
    check-cast p0, Lyl0;

    invoke-virtual {p0, p1}, Lyl0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lud1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lyads/c60;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Lud1;->b:I

    iput-object p1, p0, Lud1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lts5;Lms5;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lud1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lud1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lud1;->b:I

    iget-object p0, p0, Lud1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lmz5;

    invoke-virtual {p0, p1}, Lmz5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
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

    invoke-static {p0, p1}, Lts5;->b(Lms5;La57;)Lus5;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lie1;

    invoke-virtual {p0, p1}, Lie1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwr5;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lud1;->c:Ljava/lang/Object;

    check-cast p0, Lyads/yn;

    invoke-static {p0}, Lyads/lg5;->a(Lyads/yn;)V

    return-void
.end method

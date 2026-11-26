.class public final Lt51;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Lt51;

.field public static final h:Lt51;


# instance fields
.field public final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lt51;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt51;-><init>(II)V

    sput-object v0, Lt51;->g:Lt51;

    new-instance v0, Lt51;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lt51;-><init>(II)V

    sput-object v0, Lt51;->h:Lt51;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lt51;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lt51;->f:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lo36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "position "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lo36;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo36;->b:Lll3;

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x27

    invoke-static {p0, p1, v0}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lt99;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lla4;

    new-instance v0, Lfc;

    invoke-virtual {p1}, Lt99;->a()Lmn;

    move-result-object v1

    invoke-virtual {v1}, Lmn;->c()Z

    move-result v1

    invoke-virtual {p1}, Lt99;->a()Lmn;

    move-result-object p1

    invoke-virtual {p1}, Lmn;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lfc;-><init>(ZJ)V

    invoke-direct {p0, v0}, Lla4;-><init>(Lfc;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

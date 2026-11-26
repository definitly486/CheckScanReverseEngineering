.class public final Ljq0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Ljq0;

.field public static final h:Ljq0;

.field public static final i:Ljq0;


# instance fields
.field public final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ljq0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljq0;-><init>(II)V

    sput-object v0, Ljq0;->g:Ljq0;

    new-instance v0, Ljq0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljq0;-><init>(II)V

    sput-object v0, Ljq0;->h:Ljq0;

    new-instance v0, Ljq0;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljq0;-><init>(II)V

    sput-object v0, Ljq0;->i:Ljq0;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Ljq0;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Ljq0;->f:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lkg1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lkg1;->a()Lgf9;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lj26;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lb36;

    invoke-virtual {p1}, Lj26;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lj26;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

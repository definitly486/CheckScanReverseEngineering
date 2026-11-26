.class public final Liq0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Liq0;

.field public static final h:Liq0;


# instance fields
.field public final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Liq0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Liq0;-><init>(II)V

    sput-object v0, Liq0;->g:Liq0;

    new-instance v0, Liq0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Liq0;-><init>(II)V

    sput-object v0, Liq0;->h:Liq0;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Liq0;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Liq0;->f:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lkg1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lb36;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p1, Lkg1;->d:Ljava/lang/String;

    new-instance v2, Lx39;

    const-class v3, Lhv6;

    invoke-direct {v2, v3}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p1, p1, Lkg1;->e:Ljava/lang/String;

    new-instance v2, Lx39;

    const-class v3, Liv6;

    invoke-direct {v2, v3}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    check-cast p1, Lj26;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lj26;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

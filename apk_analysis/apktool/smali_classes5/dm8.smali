.class public final Ldm8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lem8;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardLoadingBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ldm8$a;->c:Ldm8$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lem8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardLoadingBinding;

    check-cast p2, Lem8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

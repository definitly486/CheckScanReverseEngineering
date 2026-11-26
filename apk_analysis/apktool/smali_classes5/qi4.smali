.class public final Lqi4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lyj4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingTermBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ls05;


# direct methods
.method public constructor <init>(Ls05;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lqi4$a;->c:Lqi4$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lqi4;->b:Ls05;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lyj4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTermBinding;

    check-cast p2, Lyj4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lyj4;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTermBinding;->tvOption:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lg58;->a:I

    iget-object p0, p0, Lqi4;->b:Ls05;

    invoke-interface {p0, p2, p1, v0}, Ls05;->a(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

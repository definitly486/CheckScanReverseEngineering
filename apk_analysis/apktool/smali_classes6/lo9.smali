.class public final synthetic Llo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/bj2;

.field public final synthetic c:Lyads/tt;


# direct methods
.method public synthetic constructor <init>(Lyads/bj2;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llo9;->b:Lyads/bj2;

    iput-object p2, p0, Llo9;->c:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Lyads/br0;

    iget-object v0, p0, Llo9;->b:Lyads/bj2;

    iget-object p0, p0, Llo9;->c:Lyads/tt;

    invoke-static {v0, p0, p1, p2}, Lyads/bj2;->b(Lyads/bj2;Lyads/tt;Landroid/view/View;Lyads/br0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ldv7;

.field public final synthetic c:Ldn1;


# direct methods
.method public synthetic constructor <init>(Ldv7;Ldn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcv7;->b:Ldv7;

    iput-object p2, p0, Lcv7;->c:Ldn1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcv7;->b:Ldv7;

    iget-object p1, p1, Ldv7;->b:Lbv7;

    iget-object p0, p0, Lcv7;->c:Ldn1;

    iget v0, p0, Ldn1;->a:I

    iget-boolean p0, p0, Ldn1;->c:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, v0, p0}, Lbv7;->onFavouriteClick(IZ)V

    return-void
.end method

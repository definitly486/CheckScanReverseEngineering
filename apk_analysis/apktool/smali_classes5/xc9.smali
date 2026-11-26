.class public final synthetic Lxc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lzc9;

.field public final synthetic c:Lqq0;


# direct methods
.method public synthetic constructor <init>(Lzc9;Lqq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc9;->b:Lzc9;

    iput-object p2, p0, Lxc9;->c:Lqq0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lxc9;->b:Lzc9;

    iget-object p1, p1, Lzc9;->b:Lg71;

    iget-object p0, p0, Lxc9;->c:Lqq0;

    iget-object p0, p0, Lqq0;->a:Lq71;

    iget v0, p0, Lq71;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lq71;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lg71;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

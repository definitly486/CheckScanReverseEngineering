.class public final Lyads/wn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/vn1;

.field public final b:Lyads/yn1;


# direct methods
.method public constructor <init>(Lyads/vn1;Lyads/yn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wn1;->a:Lyads/vn1;

    iput-object p2, p0, Lyads/wn1;->b:Lyads/yn1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lyads/wn1;->a:Lyads/vn1;

    iget-object p0, p0, Lyads/wn1;->b:Lyads/yn1;

    iget-object p0, p0, Lyads/yn1;->a:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Lyads/vn1;->a(Landroid/net/Uri;Landroid/view/View;)V

    :cond_0
    return-void
.end method

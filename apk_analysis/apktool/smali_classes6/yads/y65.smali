.class public final Lyads/y65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/nf6;

.field public final b:Lyads/sl4;

.field public final c:Lyads/w65;


# direct methods
.method public constructor <init>(Lyads/nf6;Lyads/sl4;Lyads/w65;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y65;->a:Lyads/nf6;

    iput-object p2, p0, Lyads/y65;->b:Lyads/sl4;

    iput-object p3, p0, Lyads/y65;->c:Lyads/w65;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lyads/y65;->a:Lyads/nf6;

    invoke-virtual {p1}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lyads/am4;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/am4;->c:Lyads/sk4;

    iget-object p1, p1, Lyads/sk4;->a:Lyads/v65;

    iget-object v0, p0, Lyads/y65;->c:Lyads/w65;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/w65;->a(Lyads/v65;)V

    iget-object p0, p0, Lyads/y65;->b:Lyads/sl4;

    iget-object p0, p0, Lyads/sl4;->a:Lyads/tl4;

    iget-object p1, p0, Lyads/tl4;->i:Lyads/yv4;

    invoke-virtual {p0, p1}, Lyads/tl4;->a(Lyads/yv4;)V

    :cond_0
    return-void
.end method

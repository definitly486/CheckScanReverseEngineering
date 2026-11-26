.class public final Lyads/if1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final a:Lyads/tt;

.field public b:Lyads/f51;

.field public c:Lyads/f51;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public final synthetic f:Lyads/jf1;


# direct methods
.method public constructor <init>(Lyads/jf1;Lyads/tt;)V
    .locals 0

    iput-object p1, p0, Lyads/if1;->f:Lyads/jf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/if1;->a:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lyads/if1;->b:Lyads/f51;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lyads/if1;->f:Lyads/jf1;

    iget-object v1, p0, Lyads/if1;->a:Lyads/tt;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, p1}, Lyads/jf1;->a(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    iget-object p2, p0, Lyads/if1;->d:Ljava/util/List;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lyads/if1;->f:Lyads/jf1;

    iget-object v0, v0, Lyads/jf1;->a:Lyads/bt0;

    iget-object p0, p0, Lyads/if1;->a:Lyads/tt;

    const-string v1, "focus"

    invoke-virtual {v0, p0, p1, p2, v1}, Lyads/bt0;->a(Lyads/tt;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object p2, p0, Lyads/if1;->c:Lyads/f51;

    iget-object v0, p0, Lyads/if1;->f:Lyads/jf1;

    iget-object v1, p0, Lyads/if1;->a:Lyads/tt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2, p1}, Lyads/jf1;->a(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    :cond_1
    iget-object p2, p0, Lyads/if1;->e:Ljava/util/List;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lyads/if1;->f:Lyads/jf1;

    iget-object v0, v0, Lyads/jf1;->a:Lyads/bt0;

    iget-object p0, p0, Lyads/if1;->a:Lyads/tt;

    const-string v1, "blur"

    invoke-virtual {v0, p0, p1, p2, v1}, Lyads/bt0;->a(Lyads/tt;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

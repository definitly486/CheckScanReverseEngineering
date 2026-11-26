.class public abstract Lyads/a70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/oc4;

.field public final b:Lyads/ic4;


# direct methods
.method public constructor <init>(Lyads/oc4;Lyads/ic4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a70;->a:Lyads/oc4;

    iput-object p2, p0, Lyads/a70;->b:Lyads/ic4;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lyads/a70;->b:Lyads/ic4;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyads/ic4;->a()V

    iput-boolean v0, p1, Lyads/ic4;->e:Z

    :cond_0
    iget-object p0, p0, Lyads/a70;->a:Lyads/oc4;

    iget-boolean p1, p0, Lyads/oc4;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "first_click_on_controls"

    invoke-virtual {p0, p1}, Lyads/oc4;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Lyads/oc4;->c:Z

    :cond_1
    return-void
.end method

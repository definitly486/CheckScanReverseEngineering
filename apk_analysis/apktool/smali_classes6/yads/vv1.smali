.class public final Lyads/vv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/xv1;


# direct methods
.method public constructor <init>(Lyads/xv1;)V
    .locals 0

    iput-object p1, p0, Lyads/vv1;->b:Lyads/xv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lyads/vv1;->b:Lyads/xv1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/xv1;->d:Z

    iget v1, p0, Lyads/xv1;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lyads/xv1;->a:Lyads/sv1;

    iget p0, p0, Lyads/xv1;->c:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lyads/sv1;->a(Z)V

    :cond_1
    return-void
.end method

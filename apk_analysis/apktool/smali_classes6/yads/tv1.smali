.class public final Lyads/tv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/xv1;


# direct methods
.method public constructor <init>(Lyads/xv1;)V
    .locals 0

    iput-object p1, p0, Lyads/tv1;->b:Lyads/xv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lyads/tv1;->b:Lyads/xv1;

    iget v0, p0, Lyads/xv1;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyads/xv1;->b:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lyads/xv1;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/xv1;->a:Lyads/sv1;

    iget p0, p0, Lyads/xv1;->c:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lyads/sv1;->a(Z)V

    :cond_1
    return-void
.end method

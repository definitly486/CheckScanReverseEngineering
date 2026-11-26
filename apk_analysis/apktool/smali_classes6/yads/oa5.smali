.class public final Lyads/oa5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/c60;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lyads/ao1;

.field public final c:Lyads/m2;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyads/ao1;Lyads/m2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/oa5;->a:Landroid/app/Activity;

    iput-object p2, p0, Lyads/oa5;->b:Lyads/ao1;

    iput-object p3, p0, Lyads/oa5;->c:Lyads/m2;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lyads/oa5;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/oa5;->c:Lyads/m2;

    invoke-virtual {p0}, Lyads/m2;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lyads/oa5;->b:Lyads/ao1;

    iget-object p0, p0, Lyads/oa5;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lyads/ao1;->a(Landroid/app/Activity;)V

    return-void
.end method

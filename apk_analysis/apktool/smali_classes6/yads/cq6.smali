.class public final Lyads/cq6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cp6;

.field public final b:Ljava/lang/String;

.field public final c:Lyads/l03;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/l03;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/cp6;

    invoke-direct {v0, p1}, Lyads/cp6;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lyads/cq6;->a:Lyads/cp6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyads/cq6;->b:Ljava/lang/String;

    iput-object p2, p0, Lyads/cq6;->c:Lyads/l03;

    iput-object p3, p0, Lyads/cq6;->d:Ljava/lang/String;

    return-void
.end method

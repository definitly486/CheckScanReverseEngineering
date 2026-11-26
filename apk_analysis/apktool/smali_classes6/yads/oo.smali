.class public final Lyads/oo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Lyads/qr3;

.field public final d:Lyads/or3;

.field public final e:Lyads/no;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 2

    new-instance v0, Lyads/qr3;

    invoke-direct {v0, p3}, Lyads/qr3;-><init>(Ljava/util/List;)V

    new-instance p3, Lyads/or3;

    invoke-direct {p3}, Lyads/or3;-><init>()V

    new-instance v1, Lyads/no;

    invoke-direct {v1, p4}, Lyads/no;-><init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/oo;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/oo;->b:Landroid/view/ViewGroup;

    iput-object v0, p0, Lyads/oo;->c:Lyads/qr3;

    iput-object p3, p0, Lyads/oo;->d:Lyads/or3;

    iput-object v1, p0, Lyads/oo;->e:Lyads/no;

    return-void
.end method

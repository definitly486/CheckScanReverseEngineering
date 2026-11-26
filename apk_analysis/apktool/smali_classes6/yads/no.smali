.class public final Lyads/no;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:[Lze4;


# instance fields
.field public final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final b:Lyads/wf6;

.field public c:Lyads/on0;

.field public final d:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/no;

    const-string v1, "parentDesignView"

    const-string v2, "getParentDesignView()Landroid/view/ViewGroup;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/no;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    new-instance v0, Lyads/wf6;

    invoke-direct {v0}, Lyads/wf6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/no;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object v0, p0, Lyads/no;->b:Lyads/wf6;

    new-instance p1, Lyads/e55;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lyads/no;->d:Lyads/e55;

    return-void
.end method

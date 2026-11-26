.class public final Lyads/hh4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Landroid/widget/CheckBox;

.field public c:Landroid/widget/ProgressBar;

.field public final d:Ljava/util/LinkedHashMap;

.field public e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lyads/gi4;->c:Lyads/gi4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hh4;->a:Landroid/view/View;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lyads/hh4;->e:Ljava/util/List;

    return-void
.end method

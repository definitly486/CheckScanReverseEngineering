.class public final Lyads/ph4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Landroid/widget/CheckBox;

.field public c:Landroid/widget/ProgressBar;

.field public d:Ljava/util/List;

.field public final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ph4;->a:Landroid/view/View;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lyads/ph4;->d:Ljava/util/List;

    invoke-static {p2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lyads/ph4;->e:Ljava/util/Map;

    return-void
.end method

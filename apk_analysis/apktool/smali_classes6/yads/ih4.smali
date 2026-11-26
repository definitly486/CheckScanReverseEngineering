.class public final Lyads/ih4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/CheckBox;

.field public final b:Landroid/widget/ProgressBar;

.field public final c:Landroid/view/View;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/hh4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/hh4;->b:Landroid/widget/CheckBox;

    iput-object v0, p0, Lyads/ih4;->a:Landroid/widget/CheckBox;

    iget-object v0, p1, Lyads/hh4;->c:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lyads/ih4;->b:Landroid/widget/ProgressBar;

    iget-object v0, p1, Lyads/hh4;->a:Landroid/view/View;

    iput-object v0, p0, Lyads/ih4;->c:Landroid/view/View;

    iget-object v0, p1, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lyads/ih4;->d:Ljava/util/LinkedHashMap;

    sget-object v0, Lyads/gi4;->c:Lyads/gi4;

    iget-object p1, p1, Lyads/hh4;->e:Ljava/util/List;

    iput-object p1, p0, Lyads/ih4;->e:Ljava/util/List;

    return-void
.end method

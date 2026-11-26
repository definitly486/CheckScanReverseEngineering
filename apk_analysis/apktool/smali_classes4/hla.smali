.class public final Lhla;
.super Lcom/google/android/gms/common/internal/zaj;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 0

    iput-object p2, p0, Lhla;->b:Landroid/content/Intent;

    iput-object p1, p0, Lhla;->c:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lhla;->d:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zaj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhla;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhla;->c:Landroidx/fragment/app/Fragment;

    iget p0, p0, Lhla;->d:I

    invoke-virtual {v1, v0, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.class public final Lela;
.super Lcom/google/android/gms/common/internal/zaj;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    iput-object p2, p0, Lela;->b:Landroid/content/Intent;

    iput-object p1, p0, Lela;->c:Landroid/app/Activity;

    iput p3, p0, Lela;->d:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zaj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lela;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lela;->c:Landroid/app/Activity;

    iget p0, p0, Lela;->d:I

    invoke-virtual {v1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

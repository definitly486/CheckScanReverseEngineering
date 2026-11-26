.class public final Lyads/tb2;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/xb2;

.field public final synthetic b:Lyads/qb2;


# direct methods
.method public constructor <init>(Lyads/xb2;Lyads/qb2;Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/tb2;->a:Lyads/xb2;

    iput-object p2, p0, Lyads/tb2;->b:Lyads/qb2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lyads/tb2;->a:Lyads/xb2;

    iget-object p0, p0, Lyads/tb2;->b:Lyads/qb2;

    iget-object p0, p0, Lyads/qb2;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lyads/xb2;->a(Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic Llu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/lg;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lyads/lg;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu9;->b:Lyads/lg;

    iput-object p2, p0, Llu9;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llu9;->b:Lyads/lg;

    iget-object p0, p0, Llu9;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lyads/eg;->a(Lyads/lg;Landroid/content/Context;)Lyads/wm0;

    move-result-object p0

    return-object p0
.end method

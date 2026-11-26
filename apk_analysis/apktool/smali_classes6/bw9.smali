.class public final synthetic Lbw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lyads/gf0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lyads/gf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw9;->b:Landroid/content/Context;

    iput-object p2, p0, Lbw9;->c:Lyads/gf0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbw9;->b:Landroid/content/Context;

    iget-object p0, p0, Lbw9;->c:Lyads/gf0;

    invoke-static {v0, p0}, Lyads/gf0;->c(Landroid/content/Context;Lyads/gf0;)Lyads/bh3;

    move-result-object p0

    return-object p0
.end method

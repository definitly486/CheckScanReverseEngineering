.class public final synthetic Lp7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/io6;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lyads/io6;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp7a;->b:Lyads/io6;

    iput-object p2, p0, Lp7a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp7a;->b:Lyads/io6;

    iget-object p0, p0, Lp7a;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lyads/r84;->a(Lyads/io6;Landroid/content/Context;)Lyads/ho6;

    move-result-object p0

    return-object p0
.end method

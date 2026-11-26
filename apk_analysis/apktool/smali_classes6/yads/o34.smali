.class public final Lyads/o34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ho;


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/o54;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/o54;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/o34;->a:Lyads/d9;

    iput-object p2, p0, Lyads/o34;->b:Lyads/o54;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/yn;Lyads/dp;)Lyads/go;
    .locals 6

    new-instance v0, Lcom/monetization/ads/mediation/banner/c;

    iget-object v4, p0, Lyads/o34;->a:Lyads/d9;

    iget-object v5, p0, Lyads/o34;->b:Lyads/o54;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/mediation/banner/c;-><init>(Landroid/content/Context;Lyads/yn;Lyads/dp;Lyads/d9;Lyads/o54;)V

    return-object v0
.end method

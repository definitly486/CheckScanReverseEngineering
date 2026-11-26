.class public final Lyads/nl6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tl6;

.field public final b:Lyads/lc6;

.field public final c:Lyads/il6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/t96;)V
    .locals 3

    new-instance v0, Lyads/tl6;

    invoke-direct {v0, p2}, Lyads/tl6;-><init>(Lyads/t96;)V

    new-instance v1, Lyads/lc6;

    invoke-direct {v1}, Lyads/lc6;-><init>()V

    new-instance v2, Lyads/il6;

    invoke-direct {v2, p1, p2}, Lyads/il6;-><init>(Landroid/content/Context;Lyads/t96;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/nl6;->a:Lyads/tl6;

    iput-object v1, p0, Lyads/nl6;->b:Lyads/lc6;

    iput-object v2, p0, Lyads/nl6;->c:Lyads/il6;

    return-void
.end method

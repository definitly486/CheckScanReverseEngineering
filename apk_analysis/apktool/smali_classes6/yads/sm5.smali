.class public final Lyads/sm5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/ra;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 1

    new-instance v0, Lyads/ra;

    invoke-direct {v0}, Lyads/ra;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sm5;->a:Lyads/bf5;

    iput-object v0, p0, Lyads/sm5;->b:Lyads/ra;

    return-void
.end method

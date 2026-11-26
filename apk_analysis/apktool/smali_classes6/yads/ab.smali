.class public final Lyads/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ku4;

.field public final b:Lyads/u5;


# direct methods
.method public constructor <init>(Lyads/t5;)V
    .locals 1

    new-instance v0, Lyads/ku4;

    invoke-direct {v0, p1}, Lyads/ku4;-><init>(Lyads/t5;)V

    new-instance p1, Lyads/u5;

    invoke-direct {p1, v0}, Lyads/u5;-><init>(Lyads/ku4;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ab;->a:Lyads/ku4;

    iput-object p1, p0, Lyads/ab;->b:Lyads/u5;

    return-void
.end method

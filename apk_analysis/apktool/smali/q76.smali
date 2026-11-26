.class public final Lq76;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg17;

.field public final b:Lg17;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg17;

    const-string v1, "[^\\d+]+"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lq76;->a:Lg17;

    new-instance v0, Lg17;

    const-string v1, "^\\+79\\d{9}$"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lq76;->b:Lg17;

    return-void
.end method

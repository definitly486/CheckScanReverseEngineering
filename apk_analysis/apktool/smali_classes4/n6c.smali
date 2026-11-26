.class public abstract Ln6c;
.super Ln1c;
.source "SourceFile"


# instance fields
.field public final b:Lf4c;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ln1c;-><init>(I)V

    new-instance p1, Lf4c;

    invoke-direct {p1, p0}, Lf4c;-><init>(Ln6c;)V

    iput-object p1, p0, Ln6c;->b:Lf4c;

    return-void
.end method

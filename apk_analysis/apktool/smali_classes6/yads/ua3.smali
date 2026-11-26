.class public final Lyads/ua3;
.super Lyads/dr;
.source "SourceFile"


# instance fields
.field public final a:Lyads/i94;

.field public final b:Lyads/r56;


# direct methods
.method public constructor <init>(Lyads/i94;)V
    .locals 1

    new-instance v0, Lyads/r56;

    invoke-direct {v0}, Lyads/r56;-><init>()V

    invoke-direct {p0}, Lyads/dr;-><init>()V

    iput-object p1, p0, Lyads/ua3;->a:Lyads/i94;

    iput-object v0, p0, Lyads/ua3;->b:Lyads/r56;

    return-void
.end method

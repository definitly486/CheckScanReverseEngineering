.class public final Lyads/g40;
.super Lyads/j40;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lyads/n40;


# direct methods
.method public constructor <init>(Lyads/n40;)V
    .locals 0

    iput-object p1, p0, Lyads/g40;->f:Lyads/n40;

    invoke-direct {p0, p1}, Lyads/j40;-><init>(Lyads/n40;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lyads/l40;

    iget-object p0, p0, Lyads/g40;->f:Lyads/n40;

    invoke-direct {v0, p0, p1}, Lyads/l40;-><init>(Lyads/n40;I)V

    return-object v0
.end method

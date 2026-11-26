.class public final Lyads/ni6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/mi6;

.field public final b:Lyads/gn4;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/mi6;

    invoke-direct {v0}, Lyads/mi6;-><init>()V

    new-instance v1, Lyads/gn4;

    invoke-direct {v1}, Lyads/gn4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ni6;->a:Lyads/mi6;

    iput-object v1, p0, Lyads/ni6;->b:Lyads/gn4;

    return-void
.end method

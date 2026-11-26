.class public final Lyads/c95;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/wg4;

.field public final b:Lyads/mi6;


# direct methods
.method public constructor <init>(Lyads/wg4;)V
    .locals 1

    new-instance v0, Lyads/mi6;

    invoke-direct {v0}, Lyads/mi6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/c95;->a:Lyads/wg4;

    iput-object v0, p0, Lyads/c95;->b:Lyads/mi6;

    return-void
.end method

.class public final Lvda;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvda;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lvda;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lvda;->c:Ljava/lang/Object;

    iput-object v0, p0, Lvda;->d:Ljava/lang/String;

    return-void
.end method

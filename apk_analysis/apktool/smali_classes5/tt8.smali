.class public final Ltt8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo22;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lit8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lit8<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(ILo22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltt8;->a:Lo22;

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Ltt8;->b:[Ljava/lang/Object;

    new-array p1, p1, [Lit8;

    iput-object p1, p0, Ltt8;->c:[Lit8;

    return-void
.end method

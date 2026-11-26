.class public final Ldu7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Lcu0;

.field public final d:Lo22;


# direct methods
.method public constructor <init>(ILcu0;Lo22;Lhd3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Ldu7;->a:Lhd3;

    iput p1, p0, Ldu7;->b:I

    iput-object p2, p0, Ldu7;->c:Lcu0;

    iput-object p3, p0, Ldu7;->d:Lo22;

    return-void
.end method

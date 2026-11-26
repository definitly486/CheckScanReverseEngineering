.class public final Luv2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxv2;

.field public final b:Lqe;

.field public final c:Ljf6;

.field public d:I

.field public final e:Ljava/util/ArrayList;

.field public f:Lhh4;


# direct methods
.method public constructor <init>(Lxv2;Lqe;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luv2;->a:Lxv2;

    iput-object p2, p0, Luv2;->b:Lqe;

    iput-object p3, p0, Luv2;->c:Ljf6;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luv2;->e:Ljava/util/ArrayList;

    return-void
.end method

.class public final Lyads/a16;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I

.field public final d:Lyads/dk5;

.field public e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Lyads/dk5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/a16;->a:Ljava/lang/String;

    iput-wide p2, p0, Lyads/a16;->b:J

    iput p1, p0, Lyads/a16;->c:I

    iput-object p5, p0, Lyads/a16;->d:Lyads/dk5;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lyads/a16;->c:I

    return p0
.end method

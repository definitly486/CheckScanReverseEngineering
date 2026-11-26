.class public abstract Lyads/sm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Lyads/f06;

.field public final d:I

.field public final e:Lyads/vz2;


# direct methods
.method public constructor <init>(ILyads/f06;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/sm0;->b:I

    iput-object p2, p0, Lyads/sm0;->c:Lyads/f06;

    iput p3, p0, Lyads/sm0;->d:I

    iget-object p1, p2, Lyads/f06;->e:[Lyads/vz2;

    aget-object p1, p1, p3

    iput-object p1, p0, Lyads/sm0;->e:Lyads/vz2;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lyads/sm0;)Z
.end method

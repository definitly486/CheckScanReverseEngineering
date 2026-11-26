.class public final Ly91$m;
.super Ly91$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# static fields
.field public static final c:Ly91$m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly91$m;

    const-string v1, "CharMatcher.none()"

    invoke-direct {v0, v1}, Ly91$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly91$m;->c:Ly91$m;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final c(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()Ly91;
    .locals 0

    sget-object p0, Ly91$b;->c:Ly91$b;

    return-object p0
.end method

.class public final Lyads/mi;
.super Lyads/ri;
.source "SourceFile"


# static fields
.field public static final c:Lyads/mi;

.field public static final d:Ljava/lang/String;

.field public static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/mi;

    invoke-direct {v0}, Lyads/mi;-><init>()V

    sput-object v0, Lyads/mi;->c:Lyads/mi;

    const-string v0, "getNumber"

    sput-object v0, Lyads/mi;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/mi;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ri;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/mi;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    sget-boolean p0, Lyads/mi;->e:Z

    return p0
.end method

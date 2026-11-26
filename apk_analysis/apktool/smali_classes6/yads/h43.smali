.class public final Lyads/h43;
.super Lyads/to0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/h43;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/h43;

    invoke-direct {v0}, Lyads/h43;-><init>()V

    sput-object v0, Lyads/h43;->c:Lyads/h43;

    const-string v0, "getDictOptUrl"

    sput-object v0, Lyads/h43;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/to0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/h43;->d:Ljava/lang/String;

    return-object p0
.end method

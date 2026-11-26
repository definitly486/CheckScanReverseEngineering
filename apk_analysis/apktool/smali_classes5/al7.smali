.class public final Lal7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# static fields
.field public static final a:Lal7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lal7;

    invoke-direct {v0}, Lal7;-><init>()V

    sput-object v0, Lal7;->a:Lal7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    const-string p0, "sections_header_content"

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    const-string p0, "sections_header"

    return-object p0
.end method

.class public final Lfr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly22;


# static fields
.field public static final b:Lfr3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfr3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr3;->b:Lfr3;

    return-void
.end method


# virtual methods
.method public final getCoroutineContext()Lo22;
    .locals 0

    sget-object p0, Lgx2;->b:Lgx2;

    return-object p0
.end method

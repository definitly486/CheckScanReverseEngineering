.class public final synthetic Lugc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lugc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lugc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lugc;->b:Lugc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Span was closed by an invalid call to SpanEndSignal.run()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

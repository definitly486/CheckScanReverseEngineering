.class public final Lcom/google/firebase/sessions/SessionData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SessionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf4<",
            "Lcom/google/firebase/sessions/SessionData;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/google/firebase/sessions/SessionData$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionData$$serializer;

    return-object p0
.end method

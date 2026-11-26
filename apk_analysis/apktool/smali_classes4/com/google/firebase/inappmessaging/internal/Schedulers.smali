.class public Lcom/google/firebase/inappmessaging/internal/Schedulers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final computeScheduler:Lhe7;

.field private final ioScheduler:Lhe7;

.field private final mainThreadScheduler:Lhe7;


# direct methods
.method public constructor <init>(Lhe7;Lhe7;Lhe7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->ioScheduler:Lhe7;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->computeScheduler:Lhe7;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThreadScheduler:Lhe7;

    return-void
.end method


# virtual methods
.method public computation()Lhe7;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->computeScheduler:Lhe7;

    return-object p0
.end method

.method public io()Lhe7;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->ioScheduler:Lhe7;

    return-object p0
.end method

.method public mainThread()Lhe7;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThreadScheduler:Lhe7;

    return-object p0
.end method

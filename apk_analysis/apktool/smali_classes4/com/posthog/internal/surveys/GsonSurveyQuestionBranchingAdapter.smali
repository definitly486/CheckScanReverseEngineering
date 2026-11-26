.class public final Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd4;
.implements Lnc4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwd4<",
        "Lcom/posthog/surveys/SurveyQuestionBranching;",
        ">;",
        "Lnc4<",
        "Lcom/posthog/surveys/SurveyQuestionBranching;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lnb6;


# direct methods
.method public constructor <init>(Lnb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;->a:Lnb6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;->a:Lnb6;

    const-string v0, "Unknown branching type: "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lpc4;->d()Lkd4;

    move-result-object p3

    const-string v1, "type"

    invoke-virtual {p3, v1}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lpc4;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p3

    goto/16 :goto_6

    :cond_0
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v2, "response_based"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v0, "responseValues"

    invoke-virtual {p3, v0}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lpc4;->d()Lkd4;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, p2

    :goto_1
    if-eqz p3, :cond_6

    iget-object p3, p3, Lkd4;->b:Lxq4;

    invoke-virtual {p3}, Lxq4;->entrySet()Ljava/util/Set;

    move-result-object p3

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lm05;->b(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    move v0, v1

    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p3, Lxq4$b;

    invoke-virtual {p3}, Lxq4$b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    move-object v0, p3

    check-cast v0, Lxq4$d;

    invoke-virtual {v0}, Lxq4$d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p3

    check-cast v0, Lxq4$b$a;

    invoke-virtual {v0}, Lxq4$d;->a()Lxq4$e;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpc4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lqd4;

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpc4;

    invoke-virtual {v3}, Lpc4;->f()Lqd4;

    move-result-object v3

    iget-object v3, v3, Lqd4;->b:Ljava/io/Serializable;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc4;

    invoke-virtual {v0}, Lpc4;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpc4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lqd4;

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpc4;

    invoke-virtual {v3}, Lpc4;->f()Lqd4;

    move-result-object v3

    iget-object v3, v3, Lqd4;->b:Ljava/io/Serializable;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc4;

    invoke-virtual {v0}, Lpc4;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc4;

    invoke-virtual {v0}, Lpc4;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    sget-object v1, Lmx2;->b:Lmx2;

    :cond_7
    new-instance p3, Lcom/posthog/surveys/SurveyQuestionBranching$ResponseBased;

    invoke-direct {p3, v1}, Lcom/posthog/surveys/SurveyQuestionBranching$ResponseBased;-><init>(Ljava/util/Map;)V

    return-object p3

    :sswitch_1
    const-string p3, "end"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_5

    :cond_8
    sget-object p0, Lcom/posthog/surveys/SurveyQuestionBranching$End;->INSTANCE:Lcom/posthog/surveys/SurveyQuestionBranching$End;

    return-object p0

    :sswitch_2
    const-string v2, "specific_question"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, "index"

    invoke-virtual {p3, v0}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lpc4;->b()I

    move-result p3

    goto :goto_4

    :cond_a
    const/4 p3, 0x0

    :goto_4
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;

    invoke-direct {v0, p3}, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;-><init>(I)V

    return-object v0

    :sswitch_3
    const-string p3, "next_question"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    goto :goto_5

    :cond_b
    sget-object p0, Lcom/posthog/surveys/SurveyQuestionBranching$Next;->INSTANCE:Lcom/posthog/surveys/SurveyQuestionBranching$Next;

    return-object p0

    :cond_c
    :goto_5
    iget-object p3, p0, Lnb6;->v:Lic6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :goto_6
    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a valid SurveyQuestionBranching: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x3e3a7c4e -> :sswitch_3
        -0x18e943ad -> :sswitch_2
        0x188db -> :sswitch_1
        0x193c5635 -> :sswitch_0
    .end sparse-switch
.end method

.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lvd4;)Lpc4;
    .locals 0

    check-cast p1, Lcom/posthog/surveys/SurveyQuestionBranching;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    iget-object p0, p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;->a:Lcom/google/gson/internal/bind/TreeTypeAdapter;

    iget-object p0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lge4;

    invoke-direct {p3}, Lge4;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    invoke-virtual {p3}, Lge4;->m()Lpc4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

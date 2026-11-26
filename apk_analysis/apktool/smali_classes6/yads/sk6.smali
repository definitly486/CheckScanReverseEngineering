.class public abstract Lyads/sk6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/sk6;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/sk6;->b:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "white"

    const/16 v2, 0xff

    invoke-static {v2, v2, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "lime"

    const/4 v3, 0x0

    invoke-static {v3, v2, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "cyan"

    invoke-static {v3, v2, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "red"

    invoke-static {v2, v3, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "yellow"

    invoke-static {v2, v2, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "magenta"

    invoke-static {v2, v3, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "blue"

    invoke-static {v3, v3, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "black"

    invoke-static {v3, v3, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyads/sk6;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bg_white"

    invoke-static {v2, v2, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "bg_lime"

    invoke-static {v3, v2, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "bg_cyan"

    invoke-static {v3, v2, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "bg_red"

    invoke-static {v2, v3, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "bg_yellow"

    invoke-static {v2, v2, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "bg_magenta"

    invoke-static {v2, v3, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "bg_blue"

    invoke-static {v3, v3, v2, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "bg_black"

    invoke-static {v3, v3, v3, v0, v1}, Ln7;->f(IIILjava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyads/sk6;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 830
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 831
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 832
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 833
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ""

    if-ge v7, v8, :cond_22

    .line 834
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v11, " "

    const/16 v12, 0x3e

    const/16 v13, 0x3c

    const/16 v14, 0x26

    const/4 v15, 0x2

    const/4 v10, -0x1

    const/16 v16, 0x1

    if-eq v8, v14, :cond_19

    if-eq v8, v13, :cond_0

    .line 835
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 836
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v8, v13, :cond_2

    :cond_1
    :goto_1
    move v7, v8

    goto :goto_0

    .line 837
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_3

    move/from16 v13, v16

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    .line 838
    :goto_2
    invoke-virtual {v1, v12, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 839
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/lit8 v12, v8, -0x2

    const/16 v17, 0x0

    .line 840
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v14, :cond_5

    move/from16 v6, v16

    goto :goto_4

    :cond_5
    move/from16 v6, v17

    :goto_4
    if-eqz v13, :cond_6

    move v14, v15

    goto :goto_5

    :cond_6
    move/from16 v14, v16

    :goto_5
    add-int/2addr v7, v14

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v12, v8, -0x1

    .line 841
    :goto_6
    invoke-virtual {v1, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 842
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_1

    .line 843
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 844
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    const/16 v18, 0x0

    if-nez v14, :cond_18

    .line 845
    sget v14, Lyads/u56;->a:I

    .line 846
    const-string v14, "[ \\.]"

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 847
    aget-object v12, v12, v17

    .line 848
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_7
    move v14, v10

    goto/16 :goto_8

    :sswitch_0
    const-string v14, "ruby"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_7

    :cond_9
    const/4 v14, 0x7

    goto :goto_8

    :sswitch_1
    const-string v14, "lang"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_7

    :cond_a
    const/4 v14, 0x6

    goto :goto_8

    :sswitch_2
    const-string v14, "rt"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_7

    :cond_b
    const/4 v14, 0x5

    goto :goto_8

    :sswitch_3
    const-string v14, "v"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_7

    :cond_c
    const/4 v14, 0x4

    goto :goto_8

    :sswitch_4
    const-string v14, "u"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_7

    :cond_d
    const/4 v14, 0x3

    goto :goto_8

    :sswitch_5
    const-string v14, "i"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_7

    :cond_e
    move v14, v15

    goto :goto_8

    :sswitch_6
    const-string v14, "c"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_7

    :cond_f
    move/from16 v14, v16

    goto :goto_8

    :sswitch_7
    const-string v14, "b"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_7

    :cond_10
    move/from16 v14, v17

    :goto_8
    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz v13, :cond_14

    .line 849
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_1

    .line 850
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/pk6;

    .line 851
    invoke-static {v0, v6, v5, v3, v2}, Lyads/sk6;->a(Ljava/lang/String;Lyads/pk6;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 852
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    .line 853
    new-instance v7, Lyads/ok6;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-direct {v7, v6, v9}, Lyads/ok6;-><init>(Lyads/pk6;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 854
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 855
    :goto_9
    iget-object v6, v6, Lyads/pk6;->a:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto/16 :goto_1

    :cond_14
    if-nez v6, :cond_1

    .line 856
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 857
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 858
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_17

    .line 859
    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_15

    move/from16 v12, v17

    goto :goto_a

    .line 860
    :cond_15
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move/from16 v12, v17

    .line 861
    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 862
    :goto_a
    const-string v11, "\\."

    .line 863
    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 864
    aget-object v10, v7, v12

    .line 865
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move/from16 v12, v16

    .line 866
    :goto_b
    array-length v13, v7

    if-ge v12, v13, :cond_16

    .line 867
    aget-object v13, v7, v12

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 868
    :cond_16
    new-instance v7, Lyads/pk6;

    invoke-direct {v7, v10, v6, v9, v11}, Lyads/pk6;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 869
    invoke-virtual {v4, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 870
    :cond_17
    invoke-static {}, Lmi2;->b()V

    return-object v18

    .line 871
    :cond_18
    invoke-static {}, Lmi2;->b()V

    return-object v18

    :cond_19
    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0x3b

    .line 872
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v9, 0x20

    .line 873
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-ne v6, v10, :cond_1a

    move v6, v15

    goto :goto_c

    :cond_1a
    if-ne v15, v10, :cond_1b

    goto :goto_c

    .line 874
    :cond_1b
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_c
    if-eq v6, v10, :cond_21

    .line 875
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 876
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_d

    :sswitch_8
    const-string v8, "nbsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v10, 0x3

    goto :goto_d

    :sswitch_9
    const-string v8, "amp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v10, 0x2

    goto :goto_d

    :sswitch_a
    const-string v8, "lt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    goto :goto_d

    :cond_1e
    move/from16 v10, v16

    goto :goto_d

    :sswitch_b
    const-string v8, "gt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v10, 0x0

    :goto_d
    packed-switch v10, :pswitch_data_1

    .line 877
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ignoring unsupported entity: \'&"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";\'"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WebvttCueParser"

    invoke-static {v8, v7}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 878
    :pswitch_1
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 879
    :pswitch_2
    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 880
    :pswitch_3
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 881
    :pswitch_4
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_e
    if-ne v6, v15, :cond_20

    .line 882
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_20
    add-int/lit8 v7, v6, 0x1

    goto/16 :goto_0

    .line 883
    :cond_21
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 884
    :cond_22
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 885
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/pk6;

    invoke-static {v0, v1, v5, v3, v2}, Lyads/sk6;->a(Ljava/lang/String;Lyads/pk6;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_f

    .line 886
    :cond_23
    new-instance v1, Lyads/pk6;

    .line 887
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v12, 0x0

    invoke-direct {v1, v9, v12, v9, v4}, Lyads/pk6;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 888
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 889
    invoke-static {v0, v1, v4, v3, v2}, Lyads/sk6;->a(Ljava/lang/String;Lyads/pk6;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 890
    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xced -> :sswitch_b
        0xd88 -> :sswitch_a
        0x179c4 -> :sswitch_9
        0x337f11 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/util/regex/Matcher;Lyads/os4;Ljava/util/ArrayList;)Lyads/nk6;
    .locals 7

    .line 774
    new-instance v0, Lyads/rk6;

    invoke-direct {v0}, Lyads/rk6;-><init>()V

    const/4 v1, 0x1

    .line 775
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    invoke-static {v1}, Lyads/uk6;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lyads/rk6;->a:J

    const/4 v1, 0x2

    .line 778
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 779
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    invoke-static {v1}, Lyads/uk6;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lyads/rk6;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    .line 781
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    invoke-static {p1, v0}, Lyads/sk6;->a(Ljava/lang/String;Lyads/rk6;)V

    .line 784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    invoke-virtual {p2}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v1

    .line 786
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 788
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p2}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 791
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lyads/sk6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object p0

    iput-object p0, v0, Lyads/rk6;->c:Ljava/lang/CharSequence;

    .line 792
    new-instance v1, Lyads/nk6;

    invoke-virtual {v0}, Lyads/rk6;->a()Lyads/rb0;

    move-result-object p0

    invoke-virtual {p0}, Lyads/rb0;->a()Lyads/sb0;

    move-result-object v2

    iget-wide v3, v0, Lyads/rk6;->a:J

    iget-wide v5, v0, Lyads/rk6;->b:J

    invoke-direct/range {v1 .. v6}, Lyads/nk6;-><init>(Lyads/sb0;JJ)V

    return-object v1

    .line 793
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Skipping cue with bad header: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lyads/pk6;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v4, v1, Lyads/pk6;->b:I

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, v1, Lyads/pk6;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v10, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v6, v10

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "ruby"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_1
    const-string v7, "lang"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_2
    const-string v7, "v"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_3
    const-string v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_4
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_5
    const-string v7, "c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_6
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_7
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1c

    :pswitch_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_9

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/mk6;

    iget-object v15, v1, Lyads/pk6;->a:Ljava/lang/String;

    iget-object v11, v1, Lyads/pk6;->d:Ljava/util/Set;

    iget-object v8, v1, Lyads/pk6;->c:Ljava/lang/String;

    invoke-virtual {v14, v0, v15, v11, v8}, Lyads/mk6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_8

    new-instance v11, Lyads/qk6;

    invoke-direct {v11, v8, v14}, Lyads/qk6;-><init>(ILyads/mk6;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_b

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/qk6;

    iget-object v11, v11, Lyads/qk6;->c:Lyads/mk6;

    iget v11, v11, Lyads/mk6;->p:I

    if-eq v11, v10, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v8, p2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Lyads/ok6;->c:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v8, v1, Lyads/pk6;->b:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_13

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/ok6;

    iget-object v14, v14, Lyads/ok6;->a:Lyads/pk6;

    iget-object v14, v14, Lyads/pk6;->a:Ljava/lang/String;

    const-string v15, "rt"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v17, v6

    const/16 v10, 0x21

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/ok6;

    iget-object v15, v14, Lyads/ok6;->a:Lyads/pk6;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v9, v7, :cond_e

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/mk6;

    iget-object v10, v15, Lyads/pk6;->a:Ljava/lang/String;

    move-object/from16 v17, v6

    iget-object v6, v15, Lyads/pk6;->d:Ljava/util/Set;

    move/from16 p2, v9

    iget-object v9, v15, Lyads/pk6;->c:Ljava/lang/String;

    invoke-virtual {v7, v0, v10, v6, v9}, Lyads/mk6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_d

    new-instance v9, Lyads/qk6;

    invoke-direct {v9, v6, v7}, Lyads/qk6;-><init>(ILyads/mk6;)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v9, p2, 0x1

    move-object/from16 v6, v17

    const/4 v10, -0x1

    goto :goto_6

    :cond_e
    move-object/from16 v17, v6

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_10

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/qk6;

    iget-object v7, v7, Lyads/qk6;->c:Lyads/mk6;

    iget v7, v7, Lyads/mk6;->p:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    iget-object v6, v14, Lyads/ok6;->a:Lyads/pk6;

    iget v6, v6, Lyads/pk6;->b:I

    sub-int/2addr v6, v13

    iget v7, v14, Lyads/ok6;->b:I

    sub-int/2addr v7, v13

    invoke-virtual {v2, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    new-instance v7, Lyads/qb5;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    invoke-direct {v7}, Lyads/qb5;-><init>()V

    const/16 v10, 0x21

    invoke-virtual {v2, v7, v8, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v13, v7

    move v8, v6

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v17

    const/4 v10, -0x1

    goto/16 :goto_5

    :pswitch_1
    const/16 v10, 0x21

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v6, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :pswitch_2
    const/16 v10, 0x21

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v6, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :pswitch_3
    iget-object v6, v1, Lyads/pk6;->d:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lyads/sk6;->c:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v2, v8, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :cond_12
    const/16 v10, 0x21

    sget-object v8, Lyads/sk6;->d:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v8, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v8, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :pswitch_4
    const/16 v10, 0x21

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v6, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    :goto_b
    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_15

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/mk6;

    iget-object v9, v1, Lyads/pk6;->a:Ljava/lang/String;

    iget-object v10, v1, Lyads/pk6;->d:Ljava/util/Set;

    iget-object v11, v1, Lyads/pk6;->c:Ljava/lang/String;

    invoke-virtual {v8, v0, v9, v10, v11}, Lyads/mk6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_14

    new-instance v10, Lyads/qk6;

    invoke-direct {v10, v9, v8}, Lyads/qk6;-><init>(ILyads/mk6;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_15
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/qk6;

    iget-object v1, v1, Lyads/qk6;->c:Lyads/mk6;

    iget v3, v1, Lyads/mk6;->l:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_16

    iget v7, v1, Lyads/mk6;->m:I

    if-ne v7, v9, :cond_16

    const/4 v9, -0x1

    :goto_e
    const/4 v3, -0x1

    goto :goto_11

    :cond_16
    const/4 v7, 0x1

    if-ne v3, v7, :cond_17

    move v3, v7

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    :goto_f
    iget v8, v1, Lyads/mk6;->m:I

    if-ne v8, v7, :cond_18

    const/4 v7, 0x2

    goto :goto_10

    :cond_18
    const/4 v7, 0x0

    :goto_10
    or-int v9, v3, v7

    goto :goto_e

    :goto_11
    if-eq v9, v3, :cond_1c

    new-instance v7, Landroid/text/style/StyleSpan;

    iget v8, v1, Lyads/mk6;->l:I

    if-ne v8, v3, :cond_19

    iget v9, v1, Lyads/mk6;->m:I

    if-ne v9, v3, :cond_19

    move v8, v3

    const/4 v9, 0x1

    goto :goto_14

    :cond_19
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    move/from16 v16, v9

    goto :goto_12

    :cond_1a
    const/16 v16, 0x0

    :goto_12
    iget v8, v1, Lyads/mk6;->m:I

    if-ne v8, v9, :cond_1b

    const/4 v8, 0x2

    goto :goto_13

    :cond_1b
    const/4 v8, 0x0

    :goto_13
    or-int v8, v16, v8

    :goto_14
    invoke-direct {v7, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v2, v7, v4, v5}, Lyads/so5;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    goto :goto_15

    :cond_1c
    const/4 v9, 0x1

    :goto_15
    iget v7, v1, Lyads/mk6;->j:I

    if-ne v7, v9, :cond_1d

    new-instance v7, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v7}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/16 v10, 0x21

    invoke-virtual {v2, v7, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_16

    :cond_1d
    const/16 v10, 0x21

    :goto_16
    iget v7, v1, Lyads/mk6;->k:I

    if-ne v7, v9, :cond_1e

    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v7, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1e
    iget-boolean v7, v1, Lyads/mk6;->g:Z

    if-eqz v7, :cond_20

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-boolean v8, v1, Lyads/mk6;->g:Z

    if-eqz v8, :cond_1f

    iget v8, v1, Lyads/mk6;->f:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v2, v7, v4, v5}, Lyads/so5;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    goto :goto_17

    :cond_1f
    const-string v0, "Font color not defined"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_20
    :goto_17
    iget-boolean v7, v1, Lyads/mk6;->i:Z

    if-eqz v7, :cond_22

    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    iget-boolean v8, v1, Lyads/mk6;->i:Z

    if-eqz v8, :cond_21

    iget v8, v1, Lyads/mk6;->h:I

    invoke-direct {v7, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-static {v2, v7, v4, v5}, Lyads/so5;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    goto :goto_18

    :cond_21
    const-string v0, "Background color not defined."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_22
    :goto_18
    iget-object v7, v1, Lyads/mk6;->e:Ljava/lang/String;

    if-eqz v7, :cond_23

    new-instance v7, Landroid/text/style/TypefaceSpan;

    iget-object v8, v1, Lyads/mk6;->e:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v7, v4, v5}, Lyads/so5;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    :cond_23
    iget v7, v1, Lyads/mk6;->n:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_26

    const/4 v8, 0x2

    if-eq v7, v8, :cond_25

    const/4 v9, 0x3

    if-eq v7, v9, :cond_24

    :goto_19
    const/4 v11, 0x1

    goto :goto_1a

    :cond_24
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    iget v10, v1, Lyads/mk6;->o:F

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    invoke-direct {v7, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v2, v7, v4, v5}, Lyads/so5;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    goto :goto_19

    :cond_25
    const/4 v9, 0x3

    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    iget v10, v1, Lyads/mk6;->o:F

    invoke-direct {v7, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v2, v7, v4, v5}, Lyads/so5;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    goto :goto_19

    :cond_26
    const/4 v8, 0x2

    const/4 v9, 0x3

    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    iget v10, v1, Lyads/mk6;->o:F

    float-to-int v10, v10

    const/4 v11, 0x1

    invoke-direct {v7, v10, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {v2, v7, v4, v5}, Lyads/so5;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    :goto_1a
    iget-boolean v1, v1, Lyads/mk6;->q:Z

    if-eqz v1, :cond_27

    new-instance v1, Lyads/t93;

    invoke-direct {v1}, Lyads/t93;-><init>()V

    const/16 v10, 0x21

    invoke-virtual {v2, v1, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1b

    :cond_27
    const/16 v10, 0x21

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_28
    :goto_1c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lyads/rk6;)V
    .locals 19

    move-object/from16 v0, p1

    .line 794
    const-string v1, "WebvttCueParser"

    sget-object v2, Lyads/sk6;->b:Ljava/util/regex/Pattern;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 795
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 796
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 797
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    .line 798
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 799
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    :try_start_0
    const-string v7, "line"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 801
    invoke-static {v6, v0}, Lyads/sk6;->b(Ljava/lang/String;Lyads/rk6;)V

    goto :goto_0

    .line 802
    :cond_0
    const-string v7, "align"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "start"

    const-string v9, "end"

    const-string v10, "middle"

    const-string v11, "center"

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, -0x1

    move/from16 p0, v3

    const/4 v3, 0x0

    if-eqz v7, :cond_7

    .line 803
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "right"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v15, v13

    goto :goto_1

    :sswitch_2
    const-string v3, "left"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v15, v14

    goto :goto_1

    :sswitch_3
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v15, v5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v15, p0

    goto :goto_1

    :sswitch_5
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    move v15, v3

    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 804
    :try_start_1
    const-string v3, "Invalid alignment value: "

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    move/from16 v3, p0

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x5

    goto :goto_3

    :pswitch_2
    move v3, v13

    goto :goto_3

    :pswitch_3
    move v3, v14

    goto :goto_3

    :goto_2
    :pswitch_4
    move v3, v5

    .line 805
    :goto_3
    iput v3, v0, Lyads/rk6;->d:I

    goto/16 :goto_0

    .line 806
    :cond_7
    const-string v7, "position"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "Percentages must end with %"

    const/high16 v16, 0x42c80000    # 100.0f

    const-string v12, "%"

    const/high16 v17, -0x80000000

    if-eqz v7, :cond_10

    const/16 v4, 0x2c

    .line 807
    :try_start_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v15, :cond_e

    add-int/lit8 v7, v4, 0x1

    .line 808
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 809
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_1

    goto :goto_4

    :sswitch_6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    const/4 v15, 0x5

    goto :goto_4

    :sswitch_7
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    move v15, v13

    goto :goto_4

    :sswitch_8
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    move v15, v14

    goto :goto_4

    :sswitch_9
    const-string v8, "line-right"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    const/4 v15, 0x2

    goto :goto_4

    :sswitch_a
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v15, p0

    goto :goto_4

    :sswitch_b
    const-string v8, "line-left"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :cond_d
    move v15, v3

    :goto_4
    packed-switch v15, :pswitch_data_1

    .line 810
    :try_start_3
    const-string v8, "Invalid anchor value: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v7, v17

    goto :goto_5

    :pswitch_5
    const/4 v7, 0x2

    goto :goto_5

    :pswitch_6
    move/from16 v7, p0

    goto :goto_5

    :pswitch_7
    move v7, v3

    .line 811
    :goto_5
    iput v7, v0, Lyads/rk6;->i:I

    .line 812
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 813
    :cond_e
    sget v4, Lyads/uk6;->a:I

    .line 814
    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 815
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    div-float v3, v3, v16

    .line 816
    iput v3, v0, Lyads/rk6;->h:F

    goto/16 :goto_0

    .line 817
    :cond_f
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 818
    :cond_10
    const-string v7, "size"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 819
    sget v4, Lyads/uk6;->a:I

    .line 820
    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 821
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    div-float v3, v3, v16

    .line 822
    iput v3, v0, Lyads/rk6;->j:F

    goto/16 :goto_0

    .line 823
    :cond_11
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 824
    :cond_12
    const-string v3, "vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_15

    .line 825
    const-string v3, "lr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "rl"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 826
    :try_start_4
    const-string v3, "Invalid \'vertical\' value: "

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v17

    goto :goto_6

    :cond_13
    move/from16 v3, p0

    goto :goto_6

    :cond_14
    const/4 v3, 0x2

    .line 827
    :goto_6
    iput v3, v0, Lyads/rk6;->k:I

    goto/16 :goto_0

    .line 828
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cue setting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 829
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping bad cue setting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6dd215c0 -> :sswitch_b
        -0x514d33ab -> :sswitch_a
        -0x4c1a40fd -> :sswitch_9
        -0x4009266b -> :sswitch_8
        0x188db -> :sswitch_7
        0x68ac462 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Lyads/rk6;)V
    .locals 7

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string v5, "middle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v5, "center"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v3, "Invalid anchor value: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebvttCueParser"

    invoke-static {v4, v3}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v6, -0x80000000

    goto :goto_1

    :pswitch_0
    move v6, v1

    goto :goto_1

    :pswitch_1
    move v6, v2

    :goto_1
    :pswitch_2
    iput v6, p1, Lyads/rk6;->g:I

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lyads/uk6;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    iput p0, p1, Lyads/rk6;->e:F

    iput v1, p1, Lyads/rk6;->f:I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Percentages must end with %"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Lyads/rk6;->e:F

    iput v2, p1, Lyads/rk6;->f:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
